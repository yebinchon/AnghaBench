#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  zero_copy; TYPE_15__* mmal; } ;
struct TYPE_27__ {int /*<<< orphan*/  eEncoding; int /*<<< orphan*/  nPortIndex; } ;
struct TYPE_26__ {int /*<<< orphan*/  bEnabled; int /*<<< orphan*/  nPortIndex; } ;
struct TYPE_25__ {int /*<<< orphan*/  nPortIndex; } ;
struct TYPE_24__ {scalar_t__ cRole; } ;
struct TYPE_23__ {int /*<<< orphan*/  nPortIndex; } ;
struct TYPE_22__ {int /*<<< orphan*/  nGroupID; int /*<<< orphan*/  nGroupPriority; } ;
struct TYPE_21__ {int /*<<< orphan*/  eColorFormat; int /*<<< orphan*/  eCompressionFormat; int /*<<< orphan*/  nPortIndex; } ;
struct TYPE_20__ {int /*<<< orphan*/  encoding_variant; int /*<<< orphan*/  encoding; } ;
struct TYPE_19__ {TYPE_1__* format; } ;
struct TYPE_18__ {scalar_t__ state; int /*<<< orphan*/  group_id; int /*<<< orphan*/  group_priority; } ;
typedef  TYPE_2__ OMX_VIDEO_PARAM_PORTFORMATTYPE ;
typedef  int /*<<< orphan*/  OMX_VERSIONTYPE ;
typedef  int OMX_U32 ;
typedef  scalar_t__ OMX_PTR ;
typedef  TYPE_3__ OMX_PRIORITYMGMTTYPE ;
typedef  TYPE_4__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef  TYPE_5__ OMX_PARAM_COMPONENTROLETYPE ;
typedef  TYPE_6__ OMX_PARAM_BUFFERSUPPLIERTYPE ;
typedef  int OMX_INDEXTYPE ;
typedef  scalar_t__ OMX_HANDLETYPE ;
typedef  int /*<<< orphan*/  OMX_ERRORTYPE ;
typedef  TYPE_7__ OMX_CONFIG_PORTBOOLEANTYPE ;
typedef  TYPE_8__ OMX_AUDIO_PARAM_PORTFORMATTYPE ;
typedef  TYPE_9__ MMALOMX_PORT_T ;
typedef  TYPE_10__ MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  OMX_ErrorBadParameter ; 
 int /*<<< orphan*/  OMX_ErrorIncorrectStateOperation ; 
 int /*<<< orphan*/  OMX_ErrorInvalidComponent ; 
 int /*<<< orphan*/  OMX_ErrorInvalidState ; 
 int /*<<< orphan*/  OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_ErrorNotImplemented ; 
#define  OMX_IndexParamAudioPortFormat 135 
 int OMX_IndexParamBrcmZeroCopy ; 
#define  OMX_IndexParamCompBufferSupplier 134 
#define  OMX_IndexParamImagePortFormat 133 
#define  OMX_IndexParamOtherPortFormat 132 
#define  OMX_IndexParamPortDefinition 131 
#define  OMX_IndexParamPriorityMgmt 130 
#define  OMX_IndexParamStandardComponentRole 129 
#define  OMX_IndexParamVideoPortFormat 128 
 scalar_t__ OMX_StateInvalid ; 
 scalar_t__ OMX_StateLoaded ; 
 int /*<<< orphan*/  OMX_VIDEO_CodingUnused ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,TYPE_4__*) ; 

__attribute__((used)) static OMX_ERRORTYPE FUNC12(
   OMX_HANDLETYPE hComponent,
   OMX_INDEXTYPE nParamIndex,
   OMX_PTR pParam)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMALOMX_PORT_T *port = NULL;

   FUNC1("hComponent %p, nParamIndex 0x%x (%s), pParam %p",
             hComponent, nParamIndex, FUNC8(nParamIndex), pParam);

   /* Sanity checks */
   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (!pParam)
      return OMX_ErrorBadParameter;
   if (*(OMX_U32 *)pParam < sizeof(OMX_U32) + sizeof(OMX_VERSIONTYPE))
      return OMX_ErrorBadParameter;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   switch(nParamIndex)
   {
   case OMX_IndexParamPortDefinition:
      {
         OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
         FUNC2(port, component, param->nPortIndex);
         return FUNC4(FUNC11(port, param));
      }
      return OMX_ErrorNone;
      break;
   case OMX_IndexParamCompBufferSupplier:
      {
         OMX_PARAM_BUFFERSUPPLIERTYPE *param = (OMX_PARAM_BUFFERSUPPLIERTYPE *)pParam;
         FUNC2(port, component, param->nPortIndex);
         //param->eBufferSupplier = OMX_BufferSupplyUnspecified;
      }
      return OMX_ErrorNone;
      break;
   case OMX_IndexParamPriorityMgmt:
      {
         OMX_PRIORITYMGMTTYPE *param = (OMX_PRIORITYMGMTTYPE *)pParam;

         if (component->state != OMX_StateLoaded)
         return OMX_ErrorIncorrectStateOperation;

         component->group_priority = param->nGroupPriority;
         component->group_id = param->nGroupID;
      }
      return OMX_ErrorNone;
      break;
   case OMX_IndexParamAudioPortFormat:
      {
         OMX_AUDIO_PARAM_PORTFORMATTYPE *param = (OMX_AUDIO_PARAM_PORTFORMATTYPE *)pParam;
         FUNC2(port, component, param->nPortIndex);
         port->mmal->format->encoding = FUNC5(param->eEncoding);
         port->mmal->format->encoding_variant = 0;
         if (FUNC3(port->mmal) != MMAL_SUCCESS)
            FUNC0("OMX_IndexParamAudioPortFormat commit failed");
         return OMX_ErrorNone;
      }
      break;
   case OMX_IndexParamVideoPortFormat:
      {
         OMX_VIDEO_PARAM_PORTFORMATTYPE *param = (OMX_VIDEO_PARAM_PORTFORMATTYPE *)pParam;
         FUNC2(port, component, param->nPortIndex);
         if (param->eCompressionFormat != OMX_VIDEO_CodingUnused)
            port->mmal->format->encoding = FUNC7(param->eCompressionFormat);
         else
            port->mmal->format->encoding = FUNC6(param->eColorFormat);
         port->mmal->format->encoding_variant = 0;

         if (FUNC3(port->mmal) != MMAL_SUCCESS)
            FUNC0("OMX_IndexParamAudioPortFormat commit failed");
         return OMX_ErrorNone;
      }
      break;
   case OMX_IndexParamImagePortFormat:
   case OMX_IndexParamOtherPortFormat:
      break;
   case OMX_IndexParamStandardComponentRole:
      {
         OMX_PARAM_COMPONENTROLETYPE *param = (OMX_PARAM_COMPONENTROLETYPE *)pParam;
         return FUNC10(component, (const char *)param->cRole);
      }
      break;
   default:
      {
         OMX_ERRORTYPE status = FUNC9(component, nParamIndex, pParam);

         /* Keep track of the zero-copy state */
         if (status == OMX_ErrorNone && nParamIndex == OMX_IndexParamBrcmZeroCopy)
         {
            FUNC2(port, component, ((OMX_CONFIG_PORTBOOLEANTYPE *)pParam)->nPortIndex);
            port->zero_copy = ((OMX_CONFIG_PORTBOOLEANTYPE *)pParam)->bEnabled;
         }

         return status;
      }
   }

   return OMX_ErrorNotImplemented;
}