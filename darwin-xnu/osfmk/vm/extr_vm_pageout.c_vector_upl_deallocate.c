
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vector_upl_t ;
typedef TYPE_2__* upl_t ;
struct upl_page_info {int dummy; } ;
struct _vector_upl {int dummy; } ;
struct TYPE_6__ {TYPE_1__* vector_upl; } ;
struct TYPE_5__ {scalar_t__ invalid_upls; scalar_t__ num_upls; int size; scalar_t__ offset; struct TYPE_5__* pagelist; } ;


 int PAGE_SIZE ;
 int kfree (TYPE_1__*,int) ;
 int panic (char*) ;

void
vector_upl_deallocate(upl_t upl)
{
 if(upl) {
  vector_upl_t vector_upl = upl->vector_upl;
  if(vector_upl) {
   if(vector_upl->invalid_upls != vector_upl->num_upls)
    panic("Deallocating non-empty Vectored UPL\n");
   kfree(vector_upl->pagelist,(sizeof(struct upl_page_info)*(vector_upl->size/PAGE_SIZE)));
   vector_upl->invalid_upls=0;
   vector_upl->num_upls = 0;
   vector_upl->pagelist = ((void*)0);
   vector_upl->size = 0;
   vector_upl->offset = 0;
   kfree(vector_upl, sizeof(struct _vector_upl));
   vector_upl = (vector_upl_t)0xfeedfeed;
  }
  else
   panic("vector_upl_deallocate was passed a non-vectored upl\n");
 }
 else
  panic("vector_upl_deallocate was passed a NULL upl\n");
}
