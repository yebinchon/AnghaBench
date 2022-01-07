
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
struct TYPE_6__ {int event; int sema; TYPE_1__* in_list; } ;
struct TYPE_5__ {int nInputPortIndex; struct TYPE_5__* pAppPrivate; } ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_2__ COMPONENT_T ;


 int ILCLIENT_EMPTY_BUFFER_DONE ;
 int VCOS_OR_CONSUME ;
 int vcos_event_flags_get (int *,int ,int ,int,int *) ;
 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;

OMX_BUFFERHEADERTYPE *ilclient_get_input_buffer(COMPONENT_T *comp, int portIndex, int block)
{
   OMX_BUFFERHEADERTYPE *ret = ((void*)0), *prev = ((void*)0);

   do {
      VCOS_UNSIGNED set;

      vcos_semaphore_wait(&comp->sema);
      ret = comp->in_list;
      while(ret != ((void*)0) && ret->nInputPortIndex != portIndex)
      {
         prev = ret;
         ret = ret->pAppPrivate;
      }

      if(ret)
      {
         if(prev == ((void*)0))
            comp->in_list = ret->pAppPrivate;
         else
            prev->pAppPrivate = ret->pAppPrivate;

         ret->pAppPrivate = ((void*)0);
      }
      vcos_semaphore_post(&comp->sema);

      if(block && !ret)
         vcos_event_flags_get(&comp->event, ILCLIENT_EMPTY_BUFFER_DONE, VCOS_OR_CONSUME, -1, &set);

   } while(block && !ret);

   return ret;
}
