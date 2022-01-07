
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
struct proc {int dummy; } ;
struct ifnet {int dummy; } ;
struct if_throttlereq {int ifthr_level; } ;
typedef int ifthr_level ;
typedef scalar_t__ caddr_t ;


 int EALREADY ;


 int VERIFY (int ) ;
 int bcopy (int *,int *,int) ;
 int ifnet_get_throttle (struct ifnet*,int *) ;
 int ifnet_set_throttle (struct ifnet*,int ) ;
 int proc_suser (struct proc*) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_throttle(struct ifnet *ifp, u_long cmd, caddr_t data, struct proc *p)
{
 struct if_throttlereq *ifthr = (struct if_throttlereq *)(void *)data;
 u_int32_t ifthr_level;
 int error = 0;

 VERIFY(ifp != ((void*)0));

 switch (cmd) {
 case 128: {



  if ((error = proc_suser(p)) != 0)
   break;

  bcopy(&ifthr->ifthr_level, &ifthr_level, sizeof (ifthr_level));
  error = ifnet_set_throttle(ifp, ifthr_level);
  if (error == EALREADY)
   error = 0;
  break;
 }

 case 129: {
  if ((error = ifnet_get_throttle(ifp, &ifthr_level)) == 0) {
   bcopy(&ifthr_level, &ifthr->ifthr_level,
       sizeof (ifthr_level));
  }
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
