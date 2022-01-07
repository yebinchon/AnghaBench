
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sf_handle; int (* sf_unregistered ) (int ) ;} ;
struct socket_filter {scalar_t__ sf_refcount; TYPE_1__ sf_filter; } ;


 int FREE (struct socket_filter*,int ) ;
 int M_IFADDR ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_unlock_exclusive (int ) ;
 int sock_filter_lock ;
 int stub1 (int ) ;

__attribute__((used)) static void
sflt_release_locked(struct socket_filter *filter)
{
 filter->sf_refcount--;
 if (filter->sf_refcount == 0) {

  if (filter->sf_filter.sf_unregistered) {
   lck_rw_unlock_exclusive(sock_filter_lock);
   filter->sf_filter.sf_unregistered(
       filter->sf_filter.sf_handle);
   lck_rw_lock_exclusive(sock_filter_lock);
  }


  FREE(filter, M_IFADDR);
 }
}
