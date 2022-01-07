
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {scalar_t__ bd_hcnt; scalar_t__ bd_scnt; scalar_t__ bd_hlen; scalar_t__ bd_slen; int * bd_fbuf; int * bd_sbuf; int bd_bufsize; int * bd_hbuf; } ;
typedef void* caddr_t ;


 int ENOBUFS ;
 int FREE (int *,int ) ;
 int M_DEVBUF ;
 int M_WAIT ;
 scalar_t__ _MALLOC (int ,int ,int ) ;

__attribute__((used)) static int
bpf_allocbufs(struct bpf_d *d)
{
 if (d->bd_sbuf != ((void*)0)) {
  FREE(d->bd_sbuf, M_DEVBUF);
  d->bd_sbuf = ((void*)0);
 }
 if (d->bd_hbuf != ((void*)0)) {
  FREE(d->bd_hbuf, M_DEVBUF);
  d->bd_hbuf = ((void*)0);
 }
 if (d->bd_fbuf != ((void*)0)) {
  FREE(d->bd_fbuf, M_DEVBUF);
  d->bd_fbuf = ((void*)0);
 }

 d->bd_fbuf = (caddr_t) _MALLOC(d->bd_bufsize, M_DEVBUF, M_WAIT);
 if (d->bd_fbuf == ((void*)0))
  return (ENOBUFS);

 d->bd_sbuf = (caddr_t) _MALLOC(d->bd_bufsize, M_DEVBUF, M_WAIT);
 if (d->bd_sbuf == ((void*)0)) {
  FREE(d->bd_fbuf, M_DEVBUF);
  d->bd_fbuf = ((void*)0);
  return (ENOBUFS);
 }
 d->bd_slen = 0;
 d->bd_hlen = 0;
 d->bd_scnt = 0;
 d->bd_hcnt = 0;
 return (0);
}
