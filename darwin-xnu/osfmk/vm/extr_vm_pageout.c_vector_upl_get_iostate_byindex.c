
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vector_upl_t ;
typedef TYPE_3__* upl_t ;
typedef int upl_size_t ;
typedef int upl_offset_t ;
typedef size_t uint32_t ;
struct TYPE_8__ {TYPE_2__* vector_upl; } ;
struct TYPE_7__ {size_t num_upls; TYPE_1__* upl_iostates; } ;
struct TYPE_6__ {int size; int offset; } ;


 int panic (char*) ;
 scalar_t__ vector_upl_is_valid (TYPE_3__*) ;

void
vector_upl_get_iostate_byindex(upl_t upl, uint32_t index, upl_offset_t *offset, upl_size_t *size)
{
 if(vector_upl_is_valid(upl)) {
  vector_upl_t vector_upl = upl->vector_upl;
  if(vector_upl) {
   if(index < vector_upl->num_upls) {
    *offset = vector_upl->upl_iostates[index].offset;
    *size = vector_upl->upl_iostates[index].size;
   }
   else
    *offset = *size = 0;
  }
  else
   panic("vector_upl_get_iostate_byindex was passed a non-vectored UPL\n");
 }
 else
  panic("vector_upl_get_iostate_byindex was passed a NULL UPL\n");
}
