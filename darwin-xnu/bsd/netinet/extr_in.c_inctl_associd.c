
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct socket {int dummy; } ;
struct so_aidreq64 {int sar_aidp; int sar_cnt; } ;
struct so_aidreq32 {int sar_aidp; int sar_cnt; } ;
typedef struct so_aidreq64* caddr_t ;




 int VERIFY (int ) ;
 int bcopy (struct so_aidreq64*,struct so_aidreq64*,int) ;
 int in_getassocids (struct socket*,int *,int ) ;

__attribute__((used)) static __attribute__((noinline)) int
inctl_associd(struct socket *so, u_long cmd, caddr_t data)
{
 int error = 0;
 union {
  struct so_aidreq32 a32;
  struct so_aidreq64 a64;
 } u;

 VERIFY(so != ((void*)0));

 switch (cmd) {
 case 129:
  bcopy(data, &u.a32, sizeof (u.a32));
  error = in_getassocids(so, &u.a32.sar_cnt, u.a32.sar_aidp);
  if (error == 0)
   bcopy(&u.a32, data, sizeof (u.a32));
  break;

 case 128:
  bcopy(data, &u.a64, sizeof (u.a64));
  error = in_getassocids(so, &u.a64.sar_cnt, u.a64.sar_aidp);
  if (error == 0)
   bcopy(&u.a64, data, sizeof (u.a64));
  break;

 default:
  VERIFY(0);

 }

 return (error);
}
