
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT_OWNED ;
 int LCK_SLEEP_DEFAULT ;
 int THREAD_UNINT ;
 int lck_mtx_assert (int ,int ) ;
 int lck_mtx_sleep (int ,int ,int *,int ) ;
 int pet_action_id ;
 int pet_lock ;

__attribute__((used)) static void
pet_thread_idle(void)
{
 lck_mtx_assert(pet_lock, LCK_MTX_ASSERT_OWNED);

 (void)lck_mtx_sleep(pet_lock, LCK_SLEEP_DEFAULT, &pet_action_id,
                     THREAD_UNINT);
}
