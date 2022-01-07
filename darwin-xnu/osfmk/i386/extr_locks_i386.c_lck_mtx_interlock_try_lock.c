
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lck_mtx_t ;


 int lck_mtx_interlock_try_lock_set_flags (int *,int ,int *) ;

__attribute__((used)) static inline int
lck_mtx_interlock_try_lock(
 lck_mtx_t *mutex,
 uint32_t *new_state)
{
 return lck_mtx_interlock_try_lock_set_flags(mutex, 0, new_state);
}
