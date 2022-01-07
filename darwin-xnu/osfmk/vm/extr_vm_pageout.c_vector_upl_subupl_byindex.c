
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vector_upl_t ;
typedef TYPE_2__* upl_t ;
typedef size_t uint32_t ;
struct TYPE_7__ {TYPE_1__* vector_upl; } ;
struct TYPE_6__ {size_t num_upls; TYPE_2__** upl_elems; } ;


 int panic (char*) ;
 scalar_t__ vector_upl_is_valid (TYPE_2__*) ;

upl_t
vector_upl_subupl_byindex(upl_t upl, uint32_t index)
{
 if(vector_upl_is_valid(upl)) {
  vector_upl_t vector_upl = upl->vector_upl;
  if(vector_upl) {
   if(index < vector_upl->num_upls)
    return vector_upl->upl_elems[index];
  }
  else
   panic("vector_upl_subupl_byindex was passed a non-vectored upl\n");
 }
 return ((void*)0);
}
