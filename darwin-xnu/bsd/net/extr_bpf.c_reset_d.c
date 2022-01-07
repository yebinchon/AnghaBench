
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {scalar_t__ bd_hbuf_read; scalar_t__ bd_dcount; scalar_t__ bd_rcount; scalar_t__ bd_hcnt; scalar_t__ bd_scnt; scalar_t__ bd_hlen; scalar_t__ bd_slen; int * bd_hbuf; int * bd_fbuf; } ;


 int panic (char*) ;

__attribute__((used)) static void
reset_d(struct bpf_d *d)
{
 if (d->bd_hbuf_read != 0)
  panic("resetting buffers during read");

 if (d->bd_hbuf) {

  d->bd_fbuf = d->bd_hbuf;
  d->bd_hbuf = ((void*)0);
 }
 d->bd_slen = 0;
 d->bd_hlen = 0;
 d->bd_scnt = 0;
 d->bd_hcnt = 0;
 d->bd_rcount = 0;
 d->bd_dcount = 0;
}
