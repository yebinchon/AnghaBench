
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lck_mtx_t ;


 void lck_mtx_interlock_lock_set_and_clear_flags (int *,int ,int ,int *) ;

__attribute__((used)) static inline void
lck_mtx_interlock_lock_clear_flags(
 lck_mtx_t *mutex,
 uint32_t and_flags,
 uint32_t *new_state)
{
 return lck_mtx_interlock_lock_set_and_clear_flags(mutex, 0, and_flags, new_state);
}
