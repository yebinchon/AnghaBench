
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rc_peek_t ;
struct TYPE_3__ {scalar_t__ previous; scalar_t__ value; scalar_t__ prior; struct TYPE_3__* next; int memref; } ;
typedef TYPE_1__ rc_memref_value_t ;


 scalar_t__ rc_memref_get_value (int *,int ,void*) ;

void rc_update_memref_values(rc_memref_value_t* memref, rc_peek_t peek, void* ud) {
  while (memref) {
    memref->previous = memref->value;
    memref->value = rc_memref_get_value(&memref->memref, peek, ud);
    if (memref->value != memref->previous)
      memref->prior = memref->previous;

    memref = memref->next;
  }
}
