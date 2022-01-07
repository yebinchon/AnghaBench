
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct in6_cgareq {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;




 int VERIFY (int ) ;
 int in6_cgareq_to_native (int ,int,struct in6_cgareq*) ;
 int in6_if_up_dad_start (struct ifnet*) ;
 int in6_ifattach_llcgareq (struct ifnet*,struct in6_cgareq*) ;

__attribute__((used)) static __attribute__((noinline)) int
in6ctl_cgastart(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct in6_cgareq llcgasr;
 int is64, error = 0;

 VERIFY(ifp != ((void*)0));

 switch (cmd) {
 case 129:
 case 128:
  is64 = (cmd == 128);






  in6_cgareq_to_native(data, is64, &llcgasr);







  error = in6_ifattach_llcgareq(ifp, &llcgasr);
  if (error == 0)
   in6_if_up_dad_start(ifp);
  break;

 default:
  VERIFY(0);

 }

 return (error);
}
