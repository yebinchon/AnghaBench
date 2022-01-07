
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* lck_mtx_ptr; } ;
typedef TYPE_2__ lck_mtx_t ;
typedef int boolean_t ;
struct TYPE_5__ {TYPE_2__ lck_mtx; } ;


 int TRUE ;
 int ordered_load_mtx_state (TYPE_2__*) ;

__attribute__((used)) __attribute__((always_inline))
static boolean_t
get_indirect_mutex(
 lck_mtx_t **lock,
 uint32_t *state)
{
 *lock = &((*lock)->lck_mtx_ptr->lck_mtx);
 *state = ordered_load_mtx_state(*lock);
 return TRUE;
}
