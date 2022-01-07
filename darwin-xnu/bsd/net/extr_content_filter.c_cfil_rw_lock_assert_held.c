
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_rw_t ;


 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LCK_RW_ASSERT_HELD ;

__attribute__((used)) static void
cfil_rw_lock_assert_held(lck_rw_t *lck, int exclusive)
{

#pragma unused(lck, exclusive)

 LCK_RW_ASSERT(lck,
     exclusive ? LCK_RW_ASSERT_EXCLUSIVE : LCK_RW_ASSERT_HELD);
}
