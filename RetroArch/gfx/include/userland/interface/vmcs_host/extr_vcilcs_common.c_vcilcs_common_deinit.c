
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* component_list; int component_lock; } ;
typedef TYPE_1__ VC_PRIVATE_COMPONENT_T ;
typedef TYPE_1__ ILCS_COMMON_T ;


 int vcos_free (TYPE_1__*) ;
 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static void vcilcs_common_deinit(ILCS_COMMON_T *st)
{
   vcos_semaphore_delete(&st->component_lock);

   while(st->component_list)
   {
      VC_PRIVATE_COMPONENT_T *comp = st->component_list;
      st->component_list = comp->next;
      vcos_free(comp);
   }

   vcos_free(st);
}
