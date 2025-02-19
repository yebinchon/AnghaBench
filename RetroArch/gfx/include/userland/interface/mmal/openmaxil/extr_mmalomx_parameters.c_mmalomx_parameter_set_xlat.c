
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef int mmal_generic ;
struct TYPE_22__ {size_t ports_num; TYPE_2__* ports; TYPE_1__* mmal; } ;
struct TYPE_18__ {int size; int id; } ;
struct TYPE_21__ {TYPE_4__ header; } ;
struct TYPE_20__ {int nSize; size_t nPortIndex; } ;
struct TYPE_17__ {scalar_t__ (* generic ) (int ,TYPE_5__ const*,TYPE_4__*,scalar_t__,int *) ;scalar_t__ (* simple ) (int ,TYPE_4__*,scalar_t__) ;} ;
struct TYPE_19__ {int omx_size; scalar_t__ type; int mmal_size; TYPE_3__ fn; int mmal_id; scalar_t__ portless; } ;
struct TYPE_16__ {int * mmal; } ;
struct TYPE_15__ {int * control; } ;
typedef scalar_t__ OMX_PTR ;
typedef int OMX_INDEXTYPE ;
typedef int OMX_ERRORTYPE ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PARAMETER_HEADER_T ;
typedef TYPE_5__ MMALOMX_PARAM_TRANSLATION_T ;
typedef TYPE_6__ MMALOMX_PARAM_OMX_HEADER_T ;
typedef TYPE_7__ MMALOMX_PARAM_MMAL_GENERIC_T ;
typedef TYPE_8__ MMALOMX_COMPONENT_T ;


 int LOG_DEBUG (char*,int ) ;
 int MMALOMX_PARAM_MAPPING_TO_MMAL ;
 scalar_t__ MMALOMX_PARAM_TRANSLATION_TYPE_DIRECT ;
 scalar_t__ MMAL_SUCCESS ;
 int OMX_ErrorBadParameter ;
 int OMX_ErrorBadPortIndex ;
 int OMX_ErrorNotImplemented ;
 scalar_t__ mmal_port_parameter_set (int *,TYPE_4__*) ;
 int mmalil_error_to_omx (scalar_t__) ;
 TYPE_5__* mmalomx_find_parameter_from_omx_id (int ) ;
 scalar_t__ stub1 (int ,TYPE_5__ const*,TYPE_4__*,scalar_t__,int *) ;
 scalar_t__ stub2 (int ,TYPE_4__*,scalar_t__) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_parameter_set_xlat(MMALOMX_COMPONENT_T *component,
   OMX_INDEXTYPE nParamIndex, OMX_PTR pParam)
{
   const MMALOMX_PARAM_TRANSLATION_T *xlat = mmalomx_find_parameter_from_omx_id(nParamIndex);
   MMALOMX_PARAM_OMX_HEADER_T *omx_header = (MMALOMX_PARAM_OMX_HEADER_T *)pParam;
   MMALOMX_PARAM_MMAL_GENERIC_T mmal_generic;
   MMAL_PARAMETER_HEADER_T *mmal_header = &mmal_generic.header;
   MMAL_PORT_T *mmal_port = component->mmal->control;
   MMAL_STATUS_T status;

   if (!xlat)
   {
      LOG_DEBUG("no translation for omx id 0x%08x", nParamIndex);
      return OMX_ErrorNotImplemented;
   }

   if (!xlat->portless)
   {
      if (omx_header->nSize < sizeof(*omx_header))
         return OMX_ErrorBadParameter;
      if (omx_header->nPortIndex >= component->ports_num)
         return OMX_ErrorBadPortIndex;
      mmal_port = component->ports[omx_header->nPortIndex].mmal;
   }

   if (omx_header->nSize < xlat->omx_size)
      return OMX_ErrorBadParameter;


   if (xlat->type == MMALOMX_PARAM_TRANSLATION_TYPE_DIRECT)
   {
      mmal_header = (MMAL_PARAMETER_HEADER_T *)(((uint8_t *)pParam) + (xlat->portless ? 0 : 4));
      mmal_generic.header = *mmal_header;
      mmal_header->size = omx_header->nSize - (xlat->portless ? 0 : 4);
      mmal_header->id = xlat->mmal_id;
      status = mmal_port_parameter_set(mmal_port, mmal_header);
      *mmal_header = mmal_generic.header;
      return mmalil_error_to_omx(status);
   }

   if (!xlat->fn.generic && !xlat->fn.simple)
   {

      return OMX_ErrorNotImplemented;
   }


   if (sizeof(mmal_generic) < xlat->mmal_size)
      return OMX_ErrorBadParameter;

   mmal_header->size = xlat->mmal_size;
   mmal_header->id = xlat->mmal_id;
   if (xlat->fn.generic)
      status = xlat->fn.generic(MMALOMX_PARAM_MAPPING_TO_MMAL, xlat, mmal_header, pParam, mmal_port);
   else
      status = xlat->fn.simple(MMALOMX_PARAM_MAPPING_TO_MMAL, mmal_header, pParam);
   if (status != MMAL_SUCCESS)
      goto error;

   status = mmal_port_parameter_set(mmal_port, mmal_header);

 error:
   return mmalil_error_to_omx(status);
}
