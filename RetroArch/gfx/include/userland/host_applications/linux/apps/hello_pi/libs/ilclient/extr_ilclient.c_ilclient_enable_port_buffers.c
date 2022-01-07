
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int sema; TYPE_3__* out_list; TYPE_3__* in_list; int comp; int bufname; } ;
struct TYPE_14__ {int pAppPrivate; } ;
struct TYPE_12__ {int nVersion; } ;
struct TYPE_13__ {int nSize; int nPortIndex; scalar_t__ bEnabled; int nBufferCountActual; scalar_t__ nBufferSize; scalar_t__ eDir; int nBufferAlignment; TYPE_1__ nVersion; } ;
typedef scalar_t__ OMX_STATETYPE ;
typedef TYPE_2__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_3__ OMX_BUFFERHEADERTYPE ;
typedef unsigned char* (* ILCLIENT_MALLOC_T ) (void*,scalar_t__,int ,int ) ;
typedef int (* ILCLIENT_FREE_T ) (void*,unsigned char*) ;
typedef TYPE_4__ COMPONENT_T ;


 int OMX_CommandPortEnable ;
 scalar_t__ OMX_DirInput ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_EventError ;
 scalar_t__ OMX_FALSE ;
 scalar_t__ OMX_GetParameter (int ,int ,TYPE_2__*) ;
 scalar_t__ OMX_GetState (int ,scalar_t__*) ;
 int OMX_IndexParamPortDefinition ;
 scalar_t__ OMX_SendCommand (int ,int ,int,int *) ;
 scalar_t__ OMX_StateExecuting ;
 scalar_t__ OMX_StateIdle ;
 scalar_t__ OMX_StatePause ;
 scalar_t__ OMX_UseBuffer (int ,TYPE_3__**,int,int *,scalar_t__,unsigned char*) ;
 int OMX_VERSION ;
 int ilclient_disable_port_buffers (TYPE_4__*,int,int *,int (*) (void*,unsigned char*),void*) ;
 int ilclient_remove_event (TYPE_4__*,int ,int ,int,int,int ) ;
 scalar_t__ ilclient_wait_for_command_complete (TYPE_4__*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int vc_assert (int) ;
 int vcos_free (unsigned char*) ;
 unsigned char* vcos_malloc_aligned (scalar_t__,int ,int ) ;
 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;

int ilclient_enable_port_buffers(COMPONENT_T *comp, int portIndex,
                                 ILCLIENT_MALLOC_T ilclient_malloc,
                                 ILCLIENT_FREE_T ilclient_free,
                                 void *private)
{
   OMX_ERRORTYPE error;
   OMX_PARAM_PORTDEFINITIONTYPE portdef;
   OMX_BUFFERHEADERTYPE *list = ((void*)0), **end = &list;
   OMX_STATETYPE state;
   int i;

   memset(&portdef, 0, sizeof(OMX_PARAM_PORTDEFINITIONTYPE));
   portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
   portdef.nVersion.nVersion = OMX_VERSION;
   portdef.nPortIndex = portIndex;


   error = OMX_GetParameter(comp->comp, OMX_IndexParamPortDefinition, &portdef);
   if(error != OMX_ErrorNone || portdef.bEnabled != OMX_FALSE || portdef.nBufferCountActual == 0 || portdef.nBufferSize == 0)
      return -1;


   error = OMX_GetState(comp->comp, &state);
   if (error != OMX_ErrorNone || !(state == OMX_StateIdle || state == OMX_StateExecuting || state == OMX_StatePause))
      return -1;


   error = OMX_SendCommand(comp->comp, OMX_CommandPortEnable, portIndex, ((void*)0));
   vc_assert(error == OMX_ErrorNone);

   for (i=0; i != portdef.nBufferCountActual; i++)
   {
      unsigned char *buf;
      if(ilclient_malloc)
         buf = ilclient_malloc(private, portdef.nBufferSize, portdef.nBufferAlignment, comp->bufname);
      else
         buf = vcos_malloc_aligned(portdef.nBufferSize, portdef.nBufferAlignment, comp->bufname);

      if(!buf)
         break;

      error = OMX_UseBuffer(comp->comp, end, portIndex, ((void*)0), portdef.nBufferSize, buf);
      if(error != OMX_ErrorNone)
      {
         if(ilclient_free)
            ilclient_free(private, buf);
         else
            vcos_free(buf);

         break;
      }
      end = (OMX_BUFFERHEADERTYPE **) &((*end)->pAppPrivate);
   }


   vcos_semaphore_wait(&comp->sema);

   if(portdef.eDir == OMX_DirInput)
   {
      *end = comp->in_list;
      comp->in_list = list;
   }
   else
   {
      *end = comp->out_list;
      comp->out_list = list;
   }

   vcos_semaphore_post(&comp->sema);

   if(i != portdef.nBufferCountActual ||
      ilclient_wait_for_command_complete(comp, OMX_CommandPortEnable, portIndex) < 0)
   {
      ilclient_disable_port_buffers(comp, portIndex, ((void*)0), ilclient_free, private);




      ilclient_remove_event(comp, OMX_EventError, 0, 1, 1, 0);

      return -1;
   }


   return 0;
}
