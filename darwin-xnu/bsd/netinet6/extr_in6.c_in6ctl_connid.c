
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct socket {int dummy; } ;
struct so_cidreq64 {int scr_cidp; int scr_cnt; int scr_aid; } ;
struct so_cidreq32 {int scr_cidp; int scr_cnt; int scr_aid; } ;
typedef struct so_cidreq64* caddr_t ;




 int VERIFY (int ) ;
 int bcopy (struct so_cidreq64*,struct so_cidreq64*,int) ;
 int in6_getconnids (struct socket*,int ,int *,int ) ;

__attribute__((used)) static __attribute__((noinline)) int
in6ctl_connid(struct socket *so, u_long cmd, caddr_t data)
{
 int error = 0;
 union {
  struct so_cidreq32 c32;
  struct so_cidreq64 c64;
 } u;

 VERIFY(so != ((void*)0));

 switch (cmd) {
 case 129: {
  bcopy(data, &u.c32, sizeof (u.c32));
  error = in6_getconnids(so, u.c32.scr_aid, &u.c32.scr_cnt,
      u.c32.scr_cidp);
  if (error == 0)
   bcopy(&u.c32, data, sizeof (u.c32));
  break;
 }

 case 128: {
  bcopy(data, &u.c64, sizeof (u.c64));
  error = in6_getconnids(so, u.c64.scr_aid, &u.c64.scr_cnt,
      u.c64.scr_cidp);
  if (error == 0)
   bcopy(&u.c64, data, sizeof (u.c64));
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
