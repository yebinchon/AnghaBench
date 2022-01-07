
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
struct TYPE_9__ {TYPE_1__* event_list; } ;
struct TYPE_8__ {struct TYPE_8__* related; int event; TYPE_5__* client; TYPE_1__* list; } ;
struct TYPE_7__ {int eEvent; int nData1; int nData2; struct TYPE_7__* next; } ;
typedef int OMX_U32 ;
typedef int OMX_COMMANDTYPE ;
typedef TYPE_1__ ILEVENT_T ;
typedef TYPE_2__ COMPONENT_T ;


 int ILCLIENT_EVENT_ERROR ;
 int ILCLIENT_PORT_DISABLED ;
 int ILCLIENT_PORT_ENABLED ;
 int ILCLIENT_STATE_CHANGED ;



 scalar_t__ OMX_ErrorSameState ;
 int OMX_EventCmdComplete ;
 int OMX_EventError ;
 int VCOS_OR_CONSUME ;
 int VCOS_SUSPEND ;
 int ilclient_lock_events (TYPE_5__*) ;
 int ilclient_unlock_events (TYPE_5__*) ;
 int vcos_event_flags_get (int *,int,int ,int ,int *) ;

int ilclient_wait_for_command_complete_dual(COMPONENT_T *comp, OMX_COMMANDTYPE command, OMX_U32 nData2, COMPONENT_T *other)
{
   OMX_U32 mask = ILCLIENT_EVENT_ERROR;
   int ret = 0;

   switch(command) {
   case 128: mask |= ILCLIENT_STATE_CHANGED; break;
   case 130: mask |= ILCLIENT_PORT_DISABLED; break;
   case 129: mask |= ILCLIENT_PORT_ENABLED; break;
   default: return -1;
   }

   if(other)
      other->related = comp;

   while(1)
   {
      ILEVENT_T *cur, *prev = ((void*)0);
      VCOS_UNSIGNED set;

      ilclient_lock_events(comp->client);

      cur = comp->list;
      while(cur &&
            !(cur->eEvent == OMX_EventCmdComplete && cur->nData1 == command && cur->nData2 == nData2) &&
            !(cur->eEvent == OMX_EventError && cur->nData2 == 1))
      {
         prev = cur;
         cur = cur->next;
      }

      if(cur)
      {
         if(prev == ((void*)0))
            comp->list = cur->next;
         else
            prev->next = cur->next;


         ret = cur->eEvent == OMX_EventCmdComplete || cur->nData1 == OMX_ErrorSameState ? 0 : -1;

         if(cur->eEvent == OMX_EventError)
            vcos_event_flags_get(&comp->event, ILCLIENT_EVENT_ERROR, VCOS_OR_CONSUME, 0, &set);


         cur->next = comp->client->event_list;
         comp->client->event_list = cur;
         cur->eEvent = -1;

         ilclient_unlock_events(comp->client);
         break;
      }
      else if(other != ((void*)0))
      {

         cur = other->list;
         while(cur && !(cur->eEvent == OMX_EventError && cur->nData2 == 1))
            cur = cur->next;

         if(cur)
         {




            ret = -2;
            ilclient_unlock_events(comp->client);
            break;
         }
      }

      ilclient_unlock_events(comp->client);

      vcos_event_flags_get(&comp->event, mask, VCOS_OR_CONSUME, VCOS_SUSPEND, &set);
   }

   if(other)
      other->related = ((void*)0);

   return ret;
}
