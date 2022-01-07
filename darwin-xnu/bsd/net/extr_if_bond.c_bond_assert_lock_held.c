
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int bond_lck_mtx ;

__attribute__((used)) static __inline__ void
bond_assert_lock_held(void)
{
    LCK_MTX_ASSERT(bond_lck_mtx, LCK_MTX_ASSERT_OWNED);
    return;
}
