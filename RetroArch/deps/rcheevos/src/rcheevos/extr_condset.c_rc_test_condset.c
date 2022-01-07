
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rc_peek_t ;
struct TYPE_4__ {scalar_t__ conditions; scalar_t__ has_pause; } ;
typedef TYPE_1__ rc_condset_t ;
typedef int lua_State ;


 int rc_test_condset_internal (TYPE_1__*,int,int*,int ,void*,int *) ;

int rc_test_condset(rc_condset_t* self, int* reset, rc_peek_t peek, void* ud, lua_State* L) {
  if (self->conditions == 0) {

    return 1;
  }

  if (self->has_pause && rc_test_condset_internal(self, 1, reset, peek, ud, L)) {

    return 0;
  }

  return rc_test_condset_internal(self, 0, reset, peek, ud, L);
}
