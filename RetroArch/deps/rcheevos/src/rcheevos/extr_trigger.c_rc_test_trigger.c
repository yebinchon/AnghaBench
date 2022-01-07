
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ requirement; TYPE_2__* alternative; int memrefs; } ;
typedef TYPE_1__ rc_trigger_t ;
typedef int rc_peek_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ rc_condset_t ;
typedef int lua_State ;


 int rc_reset_trigger (TYPE_1__*) ;
 int rc_test_condset (TYPE_2__*,int*,int ,void*,int *) ;
 int rc_update_memref_values (int ,int ,void*) ;

int rc_test_trigger(rc_trigger_t* self, rc_peek_t peek, void* ud, lua_State* L) {
  int ret, reset;
  rc_condset_t* condset;

  rc_update_memref_values(self->memrefs, peek, ud);

  reset = 0;
  ret = self->requirement != 0 ? rc_test_condset(self->requirement, &reset, peek, ud, L) : 1;
  condset = self->alternative;

  if (condset) {
    int sub = 0;

    do {
      sub |= rc_test_condset(condset, &reset, peek, ud, L);
      condset = condset->next;
    }
    while (condset != 0);

    ret &= sub && !reset;
  }

  if (reset) {
    rc_reset_trigger(self);
  }

  return ret;
}
