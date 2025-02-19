
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vector_upl_t ;
typedef TYPE_3__* upl_t ;
typedef int upl_size_t ;
typedef int upl_offset_t ;
typedef size_t uint32_t ;
struct TYPE_9__ {TYPE_2__* vector_upl; } ;
struct TYPE_8__ {size_t num_upls; TYPE_1__* upl_iostates; TYPE_3__** upl_elems; } ;
struct TYPE_7__ {int size; int offset; } ;


 int panic (char*) ;
 scalar_t__ vector_upl_is_valid (TYPE_3__*) ;

void
vector_upl_get_iostate(upl_t upl, upl_t subupl, upl_offset_t *offset, upl_size_t *size)
{
 if(vector_upl_is_valid(upl)) {
  uint32_t i = 0;
  vector_upl_t vector_upl = upl->vector_upl;

  if(vector_upl) {
   for(i = 0; i < vector_upl->num_upls; i++) {
    if(vector_upl->upl_elems[i] == subupl)
     break;
   }

   if(i == vector_upl->num_upls)
    panic("getting sub-upl iostate when none exists");

   *offset = vector_upl->upl_iostates[i].offset;
   *size = vector_upl->upl_iostates[i].size;
  }
  else
   panic("vector_upl_get_iostate was passed a non-vectored UPL\n");
 }
 else
  panic("vector_upl_get_iostate was passed a NULL UPL\n");
}
