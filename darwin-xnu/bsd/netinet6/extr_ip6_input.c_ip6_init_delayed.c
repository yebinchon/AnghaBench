
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int in6_ifattach_prelim (int ) ;
 int in6_tmpaddrtimer ;
 int ip6_desync_factor ;
 int ip6_temp_preferred_lifetime ;
 int ip6_temp_regen_advance ;
 int lo_ifp ;
 int stfattach () ;
 int timeout (int ,int *,int) ;

__attribute__((used)) static void
ip6_init_delayed(void)
{
 (void) in6_ifattach_prelim(lo_ifp);


 timeout(in6_tmpaddrtimer, ((void*)0),
     (ip6_temp_preferred_lifetime - ip6_desync_factor -
     ip6_temp_regen_advance) * hz);




}
