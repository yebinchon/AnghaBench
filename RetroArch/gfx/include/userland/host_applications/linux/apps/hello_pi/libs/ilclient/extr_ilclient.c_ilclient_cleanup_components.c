
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sema; int event; scalar_t__ comp; } ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_1__ COMPONENT_T ;


 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_FreeHandle (scalar_t__) ;
 int ilclient_return_events (TYPE_1__*) ;
 int vc_assert (int) ;
 int vcos_event_flags_delete (int *) ;
 int vcos_free (TYPE_1__*) ;
 int vcos_semaphore_delete (int *) ;

void ilclient_cleanup_components(COMPONENT_T *list[])
{
   int i;
   OMX_ERRORTYPE error;

   i=0;
   while (list[i])
   {
      ilclient_return_events(list[i]);
      if (list[i]->comp)
      {
         error = OMX_FreeHandle(list[i]->comp);

         vc_assert(error == OMX_ErrorNone);
      }
      i++;
   }

   i=0;
   while (list[i])
   {
      vcos_event_flags_delete(&list[i]->event);
      vcos_semaphore_delete(&list[i]->sema);
      vcos_free(list[i]);
      list[i] = ((void*)0);
      i++;
   }
}
