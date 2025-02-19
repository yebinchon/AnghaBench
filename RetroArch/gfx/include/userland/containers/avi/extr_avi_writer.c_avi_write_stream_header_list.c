
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_22__ {TYPE_2__* priv; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_T ;
struct TYPE_23__ {TYPE_3__** tracks; TYPE_1__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_24__ {int null_io; } ;
typedef TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_21__ {scalar_t__ drmdata_size; scalar_t__ drmdata; } ;
struct TYPE_20__ {TYPE_5__* module; } ;


 int AVI_END_CHUNK (TYPE_4__*) ;
 scalar_t__ STREAM_POSITION (TYPE_4__*) ;
 scalar_t__ STREAM_STATUS (TYPE_4__*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_FOURCC (char,char,char,char) ;
 int WRITE_BYTES (TYPE_4__*,scalar_t__,scalar_t__) ;
 int WRITE_FOURCC (TYPE_4__*,int ,char*) ;
 int WRITE_U32 (TYPE_4__*,scalar_t__,char*) ;
 scalar_t__ avi_write_stream_format_chunk (TYPE_4__*,TYPE_3__*,scalar_t__) ;
 scalar_t__ avi_write_stream_header_chunk (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ avi_write_super_index_chunk (TYPE_4__*,unsigned int,scalar_t__) ;
 int vc_container_writer_extraio_disable (TYPE_4__*,int *) ;
 int vc_container_writer_extraio_enable (TYPE_4__*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_write_stream_header_list(VC_CONTAINER_T *p_ctx,
   unsigned int track_num, uint32_t list_size)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[track_num];
   VC_CONTAINER_STATUS_T status;
   uint32_t chunk_size = 0;

   WRITE_FOURCC(p_ctx, VC_FOURCC('L','I','S','T'), "Chunk ID");
   WRITE_U32(p_ctx, list_size, "LIST Size");
   WRITE_FOURCC(p_ctx, VC_FOURCC('s','t','r','l'), "Chunk ID");

   if ((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS) return status;


   status = avi_write_stream_header_chunk(p_ctx, track);
   if (status != VC_CONTAINER_SUCCESS) return status;


   if(!vc_container_writer_extraio_enable(p_ctx, &module->null_io))
   {
      status = avi_write_stream_format_chunk(p_ctx, track, 0);
      chunk_size = STREAM_POSITION(p_ctx) - 8;
   }
   vc_container_writer_extraio_disable(p_ctx, &module->null_io);

   status = avi_write_stream_format_chunk(p_ctx, track, chunk_size);
   if (status != VC_CONTAINER_SUCCESS) return status;



   if (track->priv->drmdata && track->priv->drmdata_size)
   {
      WRITE_FOURCC(p_ctx, VC_FOURCC('s','t','r','d'), "Chunk ID");
      WRITE_U32(p_ctx, track->priv->drmdata_size, "Chunk Size");
      WRITE_BYTES(p_ctx, track->priv->drmdata, track->priv->drmdata_size);
      AVI_END_CHUNK(p_ctx);
      if ((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS) return status;
   }


   if(!vc_container_writer_extraio_enable(p_ctx, &module->null_io))
   {
      status = avi_write_super_index_chunk(p_ctx, track_num, 0);
      chunk_size = STREAM_POSITION(p_ctx) - 8;
   }
   vc_container_writer_extraio_disable(p_ctx, &module->null_io);

   status = avi_write_super_index_chunk(p_ctx, track_num, chunk_size);
   if (status != VC_CONTAINER_SUCCESS) return status;

   AVI_END_CHUNK(p_ctx);

   return STREAM_STATUS(p_ctx);
}
