
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
struct bpf_insn {int dummy; } ;
struct bpf_d {scalar_t__ bd_hbuf_read; int bd_flags; struct bpf_insn* bd_filter; } ;
typedef int caddr_t ;


 scalar_t__ BIOCSETF32 ;
 scalar_t__ BIOCSETF64 ;
 int BPF_CLOSING ;
 scalar_t__ BPF_MAXINSNS ;
 int EINVAL ;
 int ENOBUFS ;
 int ENXIO ;
 int FREE (int ,int ) ;
 int M_DEVBUF ;
 int M_WAIT ;
 int PRINET ;
 scalar_t__ USER_ADDR_NULL ;
 scalar_t__ _MALLOC (scalar_t__,int ,int ) ;
 int bpf_mlock ;
 scalar_t__ bpf_validate (struct bpf_insn*,int) ;
 scalar_t__ copyin (scalar_t__,int ,scalar_t__) ;
 int msleep (int ,int ,int ,char*,int *) ;
 int reset_d (struct bpf_d*) ;

__attribute__((used)) static int
bpf_setf(struct bpf_d *d, u_int bf_len, user_addr_t bf_insns,
    u_long cmd)
{
 struct bpf_insn *fcode, *old;
 u_int flen, size;

 while (d->bd_hbuf_read != 0)
  msleep((caddr_t)d, bpf_mlock, PRINET, "bpf_reading", ((void*)0));

 if ((d->bd_flags & BPF_CLOSING) != 0)
  return (ENXIO);

 old = d->bd_filter;
 if (bf_insns == USER_ADDR_NULL) {
  if (bf_len != 0)
   return (EINVAL);
  d->bd_filter = ((void*)0);
  reset_d(d);
  if (old != 0)
   FREE((caddr_t)old, M_DEVBUF);
  return (0);
 }
 flen = bf_len;
 if (flen > BPF_MAXINSNS)
  return (EINVAL);

 size = flen * sizeof(struct bpf_insn);
 fcode = (struct bpf_insn *) _MALLOC(size, M_DEVBUF, M_WAIT);




 if (copyin(bf_insns, (caddr_t)fcode, size) == 0 &&
     bpf_validate(fcode, (int)flen)) {
  d->bd_filter = fcode;

  if (cmd == BIOCSETF32 || cmd == BIOCSETF64)
   reset_d(d);

  if (old != 0)
   FREE((caddr_t)old, M_DEVBUF);

  return (0);
 }
 FREE((caddr_t)fcode, M_DEVBUF);
 return (EINVAL);
}
