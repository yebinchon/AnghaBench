
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 struct rtentry* rtalloc1_locked (struct sockaddr*,int,int ) ;

struct rtentry *
rtalloc1(struct sockaddr *dst, int report, uint32_t ignflags)
{
 struct rtentry *entry;
 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
 lck_mtx_lock(rnh_lock);
 entry = rtalloc1_locked(dst, report, ignflags);
 lck_mtx_unlock(rnh_lock);
 return (entry);
}
