
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
struct TYPE_15__ {int event; int comp; int sema; TYPE_3__* out_list; TYPE_3__* in_list; } ;
struct TYPE_14__ {int nInputPortIndex; int nOutputPortIndex; struct TYPE_14__* pAppPrivate; void* pBuffer; } ;
struct TYPE_12__ {int nVersion; } ;
struct TYPE_13__ {int nSize; int nPortIndex; scalar_t__ bEnabled; int nBufferCountActual; scalar_t__ nBufferSize; scalar_t__ eDir; TYPE_1__ nVersion; } ;
typedef int OMX_U32 ;
typedef TYPE_2__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_3__ OMX_BUFFERHEADERTYPE ;
typedef int (* ILCLIENT_FREE_T ) (void*,void*) ;
typedef TYPE_4__ COMPONENT_T ;


 int ILCLIENT_EMPTY_BUFFER_DONE ;
 int ILCLIENT_EVENT_ERROR ;
 int ILCLIENT_FILL_BUFFER_DONE ;
 int ILCLIENT_PORT_DISABLED ;
 int OMX_CommandPortDisable ;
 scalar_t__ OMX_DirInput ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_EventCmdComplete ;
 int OMX_EventError ;
 scalar_t__ OMX_FreeBuffer (int ,int,TYPE_3__*) ;
 scalar_t__ OMX_GetParameter (int ,int ,TYPE_2__*) ;
 int OMX_IndexParamPortDefinition ;
 scalar_t__ OMX_SendCommand (int ,int ,int,int *) ;
 scalar_t__ OMX_TRUE ;
 int OMX_VERSION ;
 int VCOS_OR_CONSUME ;
 scalar_t__ ilclient_remove_event (TYPE_4__*,int ,int ,int,int,int ) ;
 scalar_t__ ilclient_wait_for_command_complete (TYPE_4__*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int vc_assert (int) ;
 int vcos_event_flags_get (int *,int,int ,int,int*) ;
 int vcos_free (void*) ;
 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;

void ilclient_disable_port_buffers(COMPONENT_T *comp, int portIndex,
                                   OMX_BUFFERHEADERTYPE *bufferList,
                                   ILCLIENT_FREE_T ilclient_free,
                                   void *private)
{
   OMX_ERRORTYPE error;
   OMX_BUFFERHEADERTYPE *list = bufferList;
   OMX_BUFFERHEADERTYPE **head, *clist, *prev;
   OMX_PARAM_PORTDEFINITIONTYPE portdef;
   int num;


   memset(&portdef, 0, sizeof(OMX_PARAM_PORTDEFINITIONTYPE));
   portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
   portdef.nVersion.nVersion = OMX_VERSION;
   portdef.nPortIndex = portIndex;


   error = OMX_GetParameter(comp->comp, OMX_IndexParamPortDefinition, &portdef);
   if(error != OMX_ErrorNone || portdef.bEnabled != OMX_TRUE || portdef.nBufferCountActual == 0 || portdef.nBufferSize == 0)
      return;

   num = portdef.nBufferCountActual;

   error = OMX_SendCommand(comp->comp, OMX_CommandPortDisable, portIndex, ((void*)0));
   vc_assert(error == OMX_ErrorNone);

   while(num > 0)
   {
      VCOS_UNSIGNED set;

      if(list == ((void*)0))
      {
         vcos_semaphore_wait(&comp->sema);


         head = portdef.eDir == OMX_DirInput ? &comp->in_list : &comp->out_list;
         clist = *head;
         prev = ((void*)0);

         while(clist)
         {
            if((portdef.eDir == OMX_DirInput ? clist->nInputPortIndex : clist->nOutputPortIndex) == portIndex)
            {
               OMX_BUFFERHEADERTYPE *pBuffer = clist;

               if(!prev)
                  clist = *head = (OMX_BUFFERHEADERTYPE *) pBuffer->pAppPrivate;
               else
                  clist = prev->pAppPrivate = (OMX_BUFFERHEADERTYPE *) pBuffer->pAppPrivate;

               pBuffer->pAppPrivate = list;
               list = pBuffer;
            }
            else
            {
               prev = clist;
               clist = (OMX_BUFFERHEADERTYPE *) &(clist->pAppPrivate);
            }
         }

         vcos_semaphore_post(&comp->sema);
      }

      while(list)
      {
         void *buf = list->pBuffer;
         OMX_BUFFERHEADERTYPE *next = list->pAppPrivate;

         error = OMX_FreeBuffer(comp->comp, portIndex, list);
         vc_assert(error == OMX_ErrorNone);

         if(ilclient_free)
            ilclient_free(private, buf);
         else
            vcos_free(buf);

         num--;
         list = next;
      }

      if(num)
      {
         OMX_U32 mask = ILCLIENT_PORT_DISABLED | ILCLIENT_EVENT_ERROR;
         mask |= (portdef.eDir == OMX_DirInput ? ILCLIENT_EMPTY_BUFFER_DONE : ILCLIENT_FILL_BUFFER_DONE);


         vcos_event_flags_get(&comp->event, mask, VCOS_OR_CONSUME, -1, &set);

         if((set & ILCLIENT_EVENT_ERROR) && ilclient_remove_event(comp, OMX_EventError, 0, 1, 1, 0) >= 0)
            return;

         if((set & ILCLIENT_PORT_DISABLED) && ilclient_remove_event(comp, OMX_EventCmdComplete, OMX_CommandPortDisable, 0, portIndex, 0) >= 0)
            return;
      }
   }

   if(ilclient_wait_for_command_complete(comp, OMX_CommandPortDisable, portIndex) < 0)
      vc_assert(0);
}
