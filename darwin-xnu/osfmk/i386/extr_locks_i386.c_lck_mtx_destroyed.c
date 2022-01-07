
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int panic (char*,int *) ;

__attribute__((used)) __attribute__((noinline))
static void
lck_mtx_destroyed(
 lck_mtx_t *lock)
{
 panic("trying to interlock destroyed mutex (%p)", lock);
}
