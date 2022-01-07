
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int ifa_lock; } ;


 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 int lck_mtx_init (int *,int ,int ) ;

void
ifa_lock_init(struct ifaddr *ifa)
{
 lck_mtx_init(&ifa->ifa_lock, ifa_mtx_grp, ifa_mtx_attr);
}
