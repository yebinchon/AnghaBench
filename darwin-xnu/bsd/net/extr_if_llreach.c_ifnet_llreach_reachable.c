
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_llreach {int dummy; } ;


 int iflr_reachable (struct if_llreach*,int ,int ) ;

int
ifnet_llreach_reachable(struct if_llreach *lr)
{



 return (iflr_reachable(lr, 0, 0));
}
