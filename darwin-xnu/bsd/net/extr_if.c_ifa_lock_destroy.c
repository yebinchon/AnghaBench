
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int ifa_lock; } ;


 int IFA_LOCK_ASSERT_NOTHELD (struct ifaddr*) ;
 int ifa_mtx_grp ;
 int lck_mtx_destroy (int *,int ) ;

void
ifa_lock_destroy(struct ifaddr *ifa)
{
 IFA_LOCK_ASSERT_NOTHELD(ifa);
 lck_mtx_destroy(&ifa->ifa_lock, ifa_mtx_grp);
}
