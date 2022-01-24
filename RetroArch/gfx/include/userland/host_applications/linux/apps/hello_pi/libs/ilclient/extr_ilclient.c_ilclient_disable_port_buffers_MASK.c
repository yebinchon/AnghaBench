#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int VCOS_UNSIGNED ;
struct TYPE_15__ {int /*<<< orphan*/  event; int /*<<< orphan*/  comp; int /*<<< orphan*/  sema; TYPE_3__* out_list; TYPE_3__* in_list; } ;
struct TYPE_14__ {int nInputPortIndex; int nOutputPortIndex; struct TYPE_14__* pAppPrivate; void* pBuffer; } ;
struct TYPE_12__ {int /*<<< orphan*/  nVersion; } ;
struct TYPE_13__ {int nSize; int nPortIndex; scalar_t__ bEnabled; int nBufferCountActual; scalar_t__ nBufferSize; scalar_t__ eDir; TYPE_1__ nVersion; } ;
typedef  int OMX_U32 ;
typedef  TYPE_2__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef  scalar_t__ OMX_ERRORTYPE ;
typedef  TYPE_3__ OMX_BUFFERHEADERTYPE ;
typedef  int /*<<< orphan*/  (* ILCLIENT_FREE_T ) (void*,void*) ;
typedef  TYPE_4__ COMPONENT_T ;

/* Variables and functions */
 int ILCLIENT_EMPTY_BUFFER_DONE ; 
 int ILCLIENT_EVENT_ERROR ; 
 int ILCLIENT_FILL_BUFFER_DONE ; 
 int ILCLIENT_PORT_DISABLED ; 
 int /*<<< orphan*/  OMX_CommandPortDisable ; 
 scalar_t__ OMX_DirInput ; 
 scalar_t__ OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_EventCmdComplete ; 
 int /*<<< orphan*/  OMX_EventError ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  OMX_IndexParamPortDefinition ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ OMX_TRUE ; 
 int /*<<< orphan*/  OMX_VERSION ; 
 int /*<<< orphan*/  VCOS_OR_CONSUME ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(COMPONENT_T *comp, int portIndex,
                                   OMX_BUFFERHEADERTYPE *bufferList,
                                   ILCLIENT_FREE_T ilclient_free,
                                   void *private)
{
   OMX_ERRORTYPE error;
   OMX_BUFFERHEADERTYPE *list = bufferList;
   OMX_BUFFERHEADERTYPE **head, *clist, *prev;
   OMX_PARAM_PORTDEFINITIONTYPE portdef;
   int num;

   // get the buffers off the relevant queue
   FUNC5(&portdef, 0, sizeof(OMX_PARAM_PORTDEFINITIONTYPE));
   portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
   portdef.nVersion.nVersion = OMX_VERSION;
   portdef.nPortIndex = portIndex;

   // work out buffer requirements, check port is in the right state
   error = FUNC1(comp->comp, OMX_IndexParamPortDefinition, &portdef);
   if(error != OMX_ErrorNone || portdef.bEnabled != OMX_TRUE || portdef.nBufferCountActual == 0 || portdef.nBufferSize == 0)
      return;

   num = portdef.nBufferCountActual;

   error = FUNC2(comp->comp, OMX_CommandPortDisable, portIndex, NULL);
   FUNC6(error == OMX_ErrorNone);

   while(num > 0)
   {
      VCOS_UNSIGNED set;

      if(list == NULL)
      {
         FUNC10(&comp->sema);

         // take buffers for this port off the relevant queue
         head = portdef.eDir == OMX_DirInput ? &comp->in_list : &comp->out_list;
         clist = *head;
         prev = NULL;

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

         FUNC9(&comp->sema);
      }

      while(list)
      {
         void *buf = list->pBuffer;
         OMX_BUFFERHEADERTYPE *next = list->pAppPrivate;

         error = FUNC0(comp->comp, portIndex, list);
         FUNC6(error == OMX_ErrorNone);

         if(ilclient_free)
            ilclient_free(private, buf);
         else
            FUNC8(buf);

         num--;
         list = next;
      }

      if(num)
      {
         OMX_U32 mask = ILCLIENT_PORT_DISABLED | ILCLIENT_EVENT_ERROR;
         mask |= (portdef.eDir == OMX_DirInput ? ILCLIENT_EMPTY_BUFFER_DONE : ILCLIENT_FILL_BUFFER_DONE);

         // also wait for command complete/error in case we didn't have all the buffers allocated
         FUNC7(&comp->event, mask, VCOS_OR_CONSUME, -1, &set);

         if((set & ILCLIENT_EVENT_ERROR) && FUNC3(comp, OMX_EventError, 0, 1, 1, 0) >= 0)
            return;

         if((set & ILCLIENT_PORT_DISABLED) && FUNC3(comp, OMX_EventCmdComplete, OMX_CommandPortDisable, 0, portIndex, 0) >= 0)
            return;
      }
   }

   if(FUNC4(comp, OMX_CommandPortDisable, portIndex) < 0)
      FUNC6(0);
}