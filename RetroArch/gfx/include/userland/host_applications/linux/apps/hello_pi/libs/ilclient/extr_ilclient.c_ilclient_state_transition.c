
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int private; int error_mask; int comp; int event; } ;
typedef scalar_t__ OMX_STATETYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_1__ COMPONENT_T ;


 int ILCLIENT_ERROR_UNPOPULATED ;
 int ILCLIENT_EVENT_ERROR ;
 int OMX_CommandStateSet ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_SendCommand (int ,int ,scalar_t__,int *) ;
 scalar_t__ OMX_StateLoaded ;
 int VCOS_OR_CONSUME ;
 scalar_t__ ilclient_wait_for_command_complete (TYPE_1__*,int ,scalar_t__) ;
 int rand () ;
 int random_wait () ;
 int vc_assert (int) ;
 int vcos_event_flags_get (int *,int ,int ,int ,int *) ;

void ilclient_state_transition(COMPONENT_T *list[], OMX_STATETYPE state)
{
   OMX_ERRORTYPE error;
   int i, num;
   uint32_t set;

   num=0;
   while (list[num])
      num++;




   if (state == OMX_StateLoaded)
      for (i=0; i<num; i++)
         list[i]->error_mask |= ILCLIENT_ERROR_UNPOPULATED;
   for (i=0; i<num; i++)
      list[i]->private = ((rand() >> 13) & 0xff)+1;

   for (i=0; i<num; i++)
   {

      int j, min = -1;
      for (j=0; j<num; j++)
         if (list[j]->private && (min == -1 || list[min]->private > list[j]->private))
            min = j;

      list[min]->private = 0;

      random_wait();

      vcos_event_flags_get(&list[min]->event, ILCLIENT_EVENT_ERROR, VCOS_OR_CONSUME, 0, &set);

      error = OMX_SendCommand(list[min]->comp, OMX_CommandStateSet, state, ((void*)0));
      vc_assert(error == OMX_ErrorNone);
   }

   random_wait();

   for (i=0; i<num; i++)
      if(ilclient_wait_for_command_complete(list[i], OMX_CommandStateSet, state) < 0)
         vc_assert(0);

   if (state == OMX_StateLoaded)
      for (i=0; i<num; i++)
         list[i]->error_mask &= ~ILCLIENT_ERROR_UNPOPULATED;
}
