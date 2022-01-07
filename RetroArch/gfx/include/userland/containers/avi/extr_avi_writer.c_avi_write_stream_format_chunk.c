
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_2__* format; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {scalar_t__ es_type; } ;


 int AVI_END_CHUNK (int *) ;
 scalar_t__ STREAM_STATUS (int *) ;
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ;
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_FOURCC (char,char,char,float) ;
 int WRITE_FOURCC (int *,int ,char*) ;
 int WRITE_U32 (int *,int ,char*) ;
 scalar_t__ vc_container_write_bitmapinfoheader (int *,TYPE_2__*) ;
 scalar_t__ vc_container_write_waveformatex (int *,TYPE_2__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_write_stream_format_chunk(VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_T *track, uint32_t chunk_size)
{
   VC_CONTAINER_STATUS_T status;

   WRITE_FOURCC(p_ctx, VC_FOURCC('s','t','r','f'), "Chunk ID");
   WRITE_U32(p_ctx, chunk_size, "Chunk Size");

   if ((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS) return status;

   if(track->format->es_type == VC_CONTAINER_ES_TYPE_VIDEO)
      status = vc_container_write_bitmapinfoheader(p_ctx, track->format);
   else if(track->format->es_type == VC_CONTAINER_ES_TYPE_AUDIO)
      status = vc_container_write_waveformatex(p_ctx, track->format);

   if (status != VC_CONTAINER_SUCCESS) return status;

   AVI_END_CHUNK(p_ctx);

   return STREAM_STATUS(p_ctx);
}
