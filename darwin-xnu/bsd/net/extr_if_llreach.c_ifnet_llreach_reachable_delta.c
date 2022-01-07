
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct if_llreach {int dummy; } ;


 int iflr_reachable (struct if_llreach*,int,int ) ;

int
ifnet_llreach_reachable_delta(struct if_llreach *lr, u_int64_t tval)
{



 return (iflr_reachable(lr, 1, tval));
}
