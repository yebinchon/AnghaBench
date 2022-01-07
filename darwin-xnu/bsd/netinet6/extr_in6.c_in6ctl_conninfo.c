
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct socket {int dummy; } ;
struct so_cinforeq64 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; } ;
struct so_cinforeq32 {int scir_aux_len; int scir_aux_data; int scir_aux_type; int scir_dst_len; int scir_dst; int scir_src_len; int scir_src; int scir_error; int scir_ifindex; int scir_flags; int scir_cid; } ;
typedef struct so_cinforeq64* caddr_t ;




 int VERIFY (int ) ;
 int bcopy (struct so_cinforeq64*,struct so_cinforeq64*,int) ;
 int in6_getconninfo (struct socket*,int ,int *,int *,int *,int ,int *,int ,int *,int *,int ,int *) ;

__attribute__((used)) static __attribute__((noinline)) int
in6ctl_conninfo(struct socket *so, u_long cmd, caddr_t data)
{
 int error = 0;
 union {
  struct so_cinforeq32 ci32;
  struct so_cinforeq64 ci64;
 } u;

 VERIFY(so != ((void*)0));

 switch (cmd) {
 case 129: {
  bcopy(data, &u.ci32, sizeof (u.ci32));
  error = in6_getconninfo(so, u.ci32.scir_cid, &u.ci32.scir_flags,
      &u.ci32.scir_ifindex, &u.ci32.scir_error, u.ci32.scir_src,
      &u.ci32.scir_src_len, u.ci32.scir_dst, &u.ci32.scir_dst_len,
      &u.ci32.scir_aux_type, u.ci32.scir_aux_data,
      &u.ci32.scir_aux_len);
  if (error == 0)
   bcopy(&u.ci32, data, sizeof (u.ci32));
  break;
 }

 case 128: {
  bcopy(data, &u.ci64, sizeof (u.ci64));
  error = in6_getconninfo(so, u.ci64.scir_cid, &u.ci64.scir_flags,
      &u.ci64.scir_ifindex, &u.ci64.scir_error, u.ci64.scir_src,
      &u.ci64.scir_src_len, u.ci64.scir_dst, &u.ci64.scir_dst_len,
      &u.ci64.scir_aux_type, u.ci64.scir_aux_data,
      &u.ci64.scir_aux_len);
  if (error == 0)
   bcopy(&u.ci64, data, sizeof (u.ci64));
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
