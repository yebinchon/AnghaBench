
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * component_list; int * ilcs; int component_lock; } ;
typedef int ILCS_SERVICE_T ;
typedef TYPE_1__ ILCS_COMMON_T ;


 scalar_t__ VCOS_SUCCESS ;
 int vcos_free (TYPE_1__*) ;
 TYPE_1__* vcos_malloc (int,char*) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int) ;

__attribute__((used)) static ILCS_COMMON_T *vcilcs_common_init(ILCS_SERVICE_T *ilcs)
{
   ILCS_COMMON_T *st;

   st = vcos_malloc(sizeof(ILCS_COMMON_T), "ILCS_HOST_COMMON");
   if(!st)
      return ((void*)0);

   if(vcos_semaphore_create(&st->component_lock, "ILCS", 1) != VCOS_SUCCESS)
   {
      vcos_free(st);
      return ((void*)0);
   }

   st->ilcs = ilcs;
   st->component_list = ((void*)0);
   return st;
}
