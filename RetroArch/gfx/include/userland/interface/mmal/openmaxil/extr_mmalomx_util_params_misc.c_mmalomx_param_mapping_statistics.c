
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int corrupt_macroblocks; int total_bytes; int maximum_frame_bytes; int eos_seen; int frames_discarded; int frames_skipped; scalar_t__ frame_count; int buffer_count; } ;
struct TYPE_3__ {int nCorruptMBs; int nByteCount; int nMaxFrameSize; int nEOS; int nDiscards; int nFrameSkips; scalar_t__ nImageCount; scalar_t__ nFrameCount; int nBufferCount; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_CONFIG_BRCMPORTSTATSTYPE ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PARAMETER_STATISTICS_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_SUCCESS ;
 int omx_ticks_from_s64 (int ) ;
 int omx_ticks_to_s64 (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_statistics(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_CONFIG_BRCMPORTSTATSTYPE *omx = (OMX_CONFIG_BRCMPORTSTATSTYPE *)omx_param;
   MMAL_PARAMETER_STATISTICS_T *mmal = (MMAL_PARAMETER_STATISTICS_T *)mmal_param;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      mmal->buffer_count = omx->nBufferCount;
      mmal->frame_count = omx->nImageCount + omx->nFrameCount;
      mmal->frames_skipped = omx->nFrameSkips;
      mmal->frames_discarded = omx->nDiscards;
      mmal->eos_seen = omx->nEOS;
      mmal->maximum_frame_bytes = omx->nMaxFrameSize;
      mmal->total_bytes = omx_ticks_to_s64(omx->nByteCount);
      mmal->corrupt_macroblocks = omx->nCorruptMBs;
   }
   else
   {
      omx->nBufferCount = mmal->buffer_count;
      omx->nFrameCount = mmal->frame_count;
      omx->nImageCount = 0;
      omx->nFrameSkips = mmal->frames_skipped;
      omx->nDiscards = mmal->frames_discarded;
      omx->nEOS = mmal->eos_seen;
      omx->nMaxFrameSize = mmal->maximum_frame_bytes;
      omx->nByteCount = omx_ticks_from_s64(mmal->total_bytes);
      omx->nCorruptMBs = mmal->corrupt_macroblocks;
   }

   return MMAL_SUCCESS;
}
