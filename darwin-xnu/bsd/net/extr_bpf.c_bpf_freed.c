
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {scalar_t__ bd_hbuf_read; scalar_t__ bd_sbuf; scalar_t__ bd_hbuf; scalar_t__ bd_fbuf; scalar_t__ bd_filter; } ;
typedef scalar_t__ caddr_t ;


 int FREE (scalar_t__,int ) ;
 int M_DEVBUF ;
 int panic (char*) ;

__attribute__((used)) static void
bpf_freed(struct bpf_d *d)
{





 if (d->bd_hbuf_read != 0)
  panic("bpf buffer freed during read");

 if (d->bd_sbuf != 0) {
  FREE(d->bd_sbuf, M_DEVBUF);
  if (d->bd_hbuf != 0)
   FREE(d->bd_hbuf, M_DEVBUF);
  if (d->bd_fbuf != 0)
   FREE(d->bd_fbuf, M_DEVBUF);
 }
 if (d->bd_filter)
  FREE((caddr_t)d->bd_filter, M_DEVBUF);
}
