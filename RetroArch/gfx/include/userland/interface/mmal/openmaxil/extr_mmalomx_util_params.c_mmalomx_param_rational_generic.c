
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_6__ {int xlat_enum_num; scalar_t__ portless; } ;
struct TYPE_5__ {int num; int den; } ;
typedef scalar_t__ OMX_PTR ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_RATIONAL_T ;
typedef int MMAL_PORT_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef TYPE_2__ MMALOMX_PARAM_TRANSLATION_T ;
typedef int MMALOMX_PARAM_OMX_HEADER_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_PARAM_UNUSED (int *) ;
 int MMAL_SUCCESS ;
 int mmal_rational_simplify (TYPE_1__*) ;

MMAL_STATUS_T mmalomx_param_rational_generic(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   const MMALOMX_PARAM_TRANSLATION_T *xlat,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param, MMAL_PORT_T *mmal_port)
{
   MMAL_RATIONAL_T *mmal = (MMAL_RATIONAL_T *)(((uint8_t *)mmal_param) + sizeof(MMAL_PARAMETER_HEADER_T));
   int32_t *omx = (int32_t *)(((uint8_t *)omx_param) + sizeof(MMALOMX_PARAM_OMX_HEADER_T));
   MMAL_PARAM_UNUSED(mmal_port);

   if (xlat->portless)
      omx -= 1;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      mmal->num = *omx;
      mmal->den = xlat->xlat_enum_num;
      mmal_rational_simplify(mmal);
   }
   else
   {
      mmal_rational_simplify(mmal);
      *omx = 0;
      if (mmal->den)
         *omx = mmal->num * xlat->xlat_enum_num / mmal->den;
   }

   return MMAL_SUCCESS;
}
