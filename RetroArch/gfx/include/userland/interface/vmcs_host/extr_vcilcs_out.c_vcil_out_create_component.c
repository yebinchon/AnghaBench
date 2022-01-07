
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;


typedef int resp ;
typedef int gresp ;
typedef int exe ;
typedef int dresp ;
typedef int dexe ;
struct TYPE_20__ {int dir; int port; } ;
typedef TYPE_2__ VC_PRIVATE_PORT_T ;
struct TYPE_21__ {int numPorts; struct TYPE_21__* next; TYPE_2__* port; int reference; TYPE_5__* comp; } ;
typedef TYPE_3__ VC_PRIVATE_COMPONENT_T ;
struct TYPE_25__ {int param; int index; int reference; TYPE_5__* mark; int name; } ;
struct TYPE_24__ {scalar_t__ err; int numPorts; int portDir; int * portIndex; int param; int reference; } ;
struct TYPE_23__ {int ComponentRoleEnum; int UseEGLImage; int GetExtensionIndex; int ComponentTunnelRequest; int FillThisBuffer; int EmptyThisBuffer; int FreeBuffer; int AllocateBuffer; int UseBuffer; int SendCommand; int SetConfig; int GetConfig; int SetParameter; int GetParameter; int GetState; int SetCallbacks; int ComponentDeInit; int GetComponentVersion; TYPE_12__* pApplicationPrivate; TYPE_3__* pComponentPrivate; } ;
struct TYPE_19__ {int nVersion; } ;
struct TYPE_22__ {int nSize; int reqSet; int portDir; int portIndex; TYPE_1__ nVersion; } ;
struct TYPE_18__ {int component_lock; TYPE_3__* component_list; int ilcs; } ;
typedef int OMX_U32 ;
typedef int OMX_STRING ;
typedef TYPE_4__ OMX_PARAM_PORTSUMMARYTYPE ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_5__ OMX_COMPONENTTYPE ;
typedef TYPE_6__ IL_RESPONSE_HEADER_T ;
typedef TYPE_6__ IL_GET_RESPONSE_T ;
typedef TYPE_8__ IL_GET_EXECUTE_T ;
typedef TYPE_8__ IL_EXECUTE_HEADER_T ;
typedef TYPE_6__ IL_CREATE_COMPONENT_RESPONSE_T ;
typedef TYPE_8__ IL_CREATE_COMPONENT_EXECUTE_T ;
typedef TYPE_12__ ILCS_COMMON_T ;


 int IL_COMPONENT_DEINIT ;
 int IL_CREATE_COMPONENT ;
 int IL_GET_EXECUTE_HEADER_SIZE ;
 int IL_GET_PARAMETER ;
 int OMX_DirInput ;
 int OMX_DirOutput ;
 scalar_t__ OMX_ErrorHardware ;
 scalar_t__ OMX_ErrorInsufficientResources ;
 scalar_t__ OMX_ErrorInvalidComponent ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_IndexParamPortSummary ;
 int OMX_VERSION ;
 scalar_t__ ilcs_execute_function (int ,int ,TYPE_8__*,int,TYPE_6__*,int*) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;
 int vcil_out_AllocateBuffer ;
 int vcil_out_ComponentDeInit ;
 int vcil_out_ComponentRoleEnum ;
 int vcil_out_ComponentTunnelRequest ;
 int vcil_out_EmptyThisBuffer ;
 int vcil_out_FillThisBuffer ;
 int vcil_out_FreeBuffer ;
 int vcil_out_GetComponentVersion ;
 int vcil_out_GetConfig ;
 int vcil_out_GetExtensionIndex ;
 int vcil_out_GetParameter ;
 int vcil_out_GetState ;
 int vcil_out_SendCommand ;
 int vcil_out_SetCallbacks ;
 int vcil_out_SetConfig ;
 int vcil_out_SetParameter ;
 int vcil_out_UseBuffer ;
 int vcil_out_UseEGLImage ;
 TYPE_3__* vcos_malloc (int,char*) ;
 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;

OMX_ERRORTYPE vcil_out_create_component(ILCS_COMMON_T *st, OMX_HANDLETYPE hComponent, OMX_STRING component_name)
{
   OMX_COMPONENTTYPE *pComp = (OMX_COMPONENTTYPE *) hComponent;
   IL_CREATE_COMPONENT_EXECUTE_T exe;
   IL_CREATE_COMPONENT_RESPONSE_T resp;
   VC_PRIVATE_COMPONENT_T *comp;
   OMX_U32 i;
   int rlen = sizeof(resp);

   if (strlen(component_name) >= sizeof(exe.name))
      return OMX_ErrorInvalidComponent;

   strcpy(exe.name, component_name);
   exe.mark = pComp;

   if(ilcs_execute_function(st->ilcs, IL_CREATE_COMPONENT, &exe, sizeof(exe), &resp, &rlen) < 0 || rlen != sizeof(resp))
      return OMX_ErrorHardware;

   if (resp.err != OMX_ErrorNone)
      return resp.err;

   comp = vcos_malloc(sizeof(VC_PRIVATE_COMPONENT_T) + (sizeof(VC_PRIVATE_PORT_T) * resp.numPorts), "ILCS Host Comp");
   if (!comp)
   {
      IL_EXECUTE_HEADER_T dexe;
      IL_RESPONSE_HEADER_T dresp;
      int dlen = sizeof(dresp);

      dexe.reference = resp.reference;

      ilcs_execute_function(st->ilcs, IL_COMPONENT_DEINIT, &dexe, sizeof(dexe), &dresp, &dlen);
      return OMX_ErrorInsufficientResources;
   }

   memset(comp, 0, sizeof(VC_PRIVATE_COMPONENT_T) + (sizeof(VC_PRIVATE_PORT_T) * resp.numPorts));

   comp->reference = resp.reference;
   comp->comp = pComp;
   comp->numPorts = resp.numPorts;
   comp->port = (VC_PRIVATE_PORT_T *) ((unsigned char *) comp + sizeof(VC_PRIVATE_COMPONENT_T));

   for (i=0; i<comp->numPorts; i++)
   {
      if (i && !(i&0x1f))
      {
         IL_GET_EXECUTE_T gexe;
         IL_GET_RESPONSE_T gresp;
         OMX_PARAM_PORTSUMMARYTYPE *summary;
         int glen = sizeof(gresp);

         gexe.reference = comp->reference;
         gexe.index = OMX_IndexParamPortSummary;

         summary = (OMX_PARAM_PORTSUMMARYTYPE *) &gexe.param;
         summary->nSize = sizeof(OMX_PARAM_PORTSUMMARYTYPE);
         summary->nVersion.nVersion = OMX_VERSION;
         summary->reqSet = i>>5;

         ilcs_execute_function(st->ilcs, IL_GET_PARAMETER, &gexe,
                               sizeof(OMX_PARAM_PORTSUMMARYTYPE)+IL_GET_EXECUTE_HEADER_SIZE,
                               &gresp, &glen);

         summary = (OMX_PARAM_PORTSUMMARYTYPE *) &gresp.param;
         resp.portDir = summary->portDir;
         memcpy(resp.portIndex, summary->portIndex, sizeof(OMX_U32) * 32);
      }

      comp->port[i].port = resp.portIndex[i&0x1f];
      comp->port[i].dir = ((resp.portDir >> (i&0x1f)) & 1) ? OMX_DirOutput : OMX_DirInput;
   }

   vcos_semaphore_wait(&st->component_lock);

   comp->next = st->component_list;
   st->component_list = comp;
   vcos_semaphore_post(&st->component_lock);

   pComp->pComponentPrivate = comp;
   pComp->pApplicationPrivate = st;

   pComp->GetComponentVersion = vcil_out_GetComponentVersion;
   pComp->ComponentDeInit = vcil_out_ComponentDeInit;
   pComp->SetCallbacks = vcil_out_SetCallbacks;
   pComp->GetState = vcil_out_GetState;
   pComp->GetParameter = vcil_out_GetParameter;
   pComp->SetParameter = vcil_out_SetParameter;
   pComp->GetConfig = vcil_out_GetConfig;
   pComp->SetConfig = vcil_out_SetConfig;
   pComp->SendCommand = vcil_out_SendCommand;
   pComp->UseBuffer = vcil_out_UseBuffer;
   pComp->AllocateBuffer = vcil_out_AllocateBuffer;
   pComp->FreeBuffer = vcil_out_FreeBuffer;
   pComp->EmptyThisBuffer = vcil_out_EmptyThisBuffer;
   pComp->FillThisBuffer = vcil_out_FillThisBuffer;
   pComp->ComponentTunnelRequest = vcil_out_ComponentTunnelRequest;
   pComp->GetExtensionIndex = vcil_out_GetExtensionIndex;
   pComp->UseEGLImage = vcil_out_UseEGLImage;
   pComp->ComponentRoleEnum = vcil_out_ComponentRoleEnum;

   return resp.err;
}
