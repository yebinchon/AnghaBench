
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int rtrequest_scoped_locked (int,struct sockaddr*,struct sockaddr*,struct sockaddr*,int,struct rtentry**,unsigned int) ;

int
rtrequest_scoped(int req, struct sockaddr *dst, struct sockaddr *gateway,
    struct sockaddr *netmask, int flags, struct rtentry **ret_nrt,
    unsigned int ifscope)
{
 int error;
 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
 lck_mtx_lock(rnh_lock);
 error = rtrequest_scoped_locked(req, dst, gateway, netmask, flags,
     ret_nrt, ifscope);
 lck_mtx_unlock(rnh_lock);
 return (error);
}
