
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int alpha; int copyprotect_required; int layer; int pixel_y; int pixel_x; scalar_t__ mode; int noaspect; int src_rect; int dest_rect; scalar_t__ transform; int fullscreen; int display_num; int set; } ;
struct TYPE_3__ {int alpha; int copyprotect_required; int layer; int pixel_y; int pixel_x; scalar_t__ mode; int noaspect; int src_rect; int dest_rect; scalar_t__ transform; int fullscreen; int num; int set; } ;
typedef scalar_t__ OMX_PTR ;
typedef scalar_t__ OMX_DISPLAYTRANSFORMTYPE ;
typedef scalar_t__ OMX_DISPLAYMODETYPE ;
typedef TYPE_1__ OMX_CONFIG_DISPLAYREGIONTYPE ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef scalar_t__ MMAL_DISPLAYTRANSFORM_T ;
typedef TYPE_2__ MMAL_DISPLAYREGION_T ;
typedef scalar_t__ MMAL_DISPLAYMODE_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_SUCCESS ;
 int rect_to_mmal (int *,int *) ;
 int rect_to_omx (int *,int *) ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_CONFIG_DISPLAYREGIONTYPE *omx = (OMX_CONFIG_DISPLAYREGIONTYPE *)omx_param;
   MMAL_DISPLAYREGION_T *mmal = (MMAL_DISPLAYREGION_T *)mmal_param;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      mmal->set = omx->set;
      mmal->display_num = omx->num;
      mmal->fullscreen = omx->fullscreen;
      mmal->transform = (MMAL_DISPLAYTRANSFORM_T)omx->transform;
      rect_to_mmal(&mmal->dest_rect, &omx->dest_rect);
      rect_to_mmal(&mmal->src_rect, &omx->src_rect);
      mmal->noaspect = omx->noaspect;
      mmal->mode = (MMAL_DISPLAYMODE_T)omx->mode;
      mmal->pixel_x = omx->pixel_x;
      mmal->pixel_y = omx->pixel_y;
      mmal->layer = omx->layer;
      mmal->copyprotect_required = omx->copyprotect_required;
      mmal->alpha = omx->alpha;
   }
   else
   {
      omx->set = mmal->set;
      omx->num = mmal->display_num;
      omx->fullscreen = mmal->fullscreen;
      omx->transform = (OMX_DISPLAYTRANSFORMTYPE)mmal->transform;
      rect_to_omx(&omx->dest_rect, &mmal->dest_rect);
      rect_to_omx(&omx->src_rect, &mmal->src_rect);
      omx->noaspect = mmal->noaspect;
      omx->mode = (OMX_DISPLAYMODETYPE)mmal->mode;
      omx->pixel_x = mmal->pixel_x;
      omx->pixel_y = mmal->pixel_y;
      omx->layer = mmal->layer;
      omx->copyprotect_required = mmal->copyprotect_required;
      omx->alpha = mmal->alpha;
   }

   return MMAL_SUCCESS;
}
