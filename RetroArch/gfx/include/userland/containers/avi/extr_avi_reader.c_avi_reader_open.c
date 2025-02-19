
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_18__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int int64_t ;
struct TYPE_36__ {scalar_t__ tracks_num; TYPE_3__* priv; TYPE_8__** tracks; int capabilities; } ;
typedef TYPE_5__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_33__ {void* data_offset; } ;
struct TYPE_37__ {TYPE_2__ state; void* data_offset; scalar_t__ index_size; void* index_offset; scalar_t__ data_size; TYPE_8__** tracks; } ;
typedef TYPE_6__ VC_CONTAINER_MODULE_T ;
struct TYPE_38__ {TYPE_4__* priv; } ;
struct TYPE_35__ {TYPE_18__* module; } ;
struct TYPE_34__ {TYPE_6__* module; int (* pf_seek ) (TYPE_5__*,int *,int ,int ) ;int pf_read; int pf_close; } ;
struct TYPE_32__ {TYPE_2__* state; } ;
struct TYPE_31__ {TYPE_1__ chunk; scalar_t__ index_offset; } ;


 scalar_t__ AVIF_MUSTUSEINDEX ;
 scalar_t__ AVIF_TRUSTCKTYPE ;
 int AVI_SKIP_CHUNK (TYPE_5__*,scalar_t__) ;
 scalar_t__ AVI_TRACKS_MAX ;
 int INT64_C (int ) ;
 int LOG_DEBUG (TYPE_5__*,char*,...) ;
 int PEEK_BYTES (TYPE_5__*,int *,int) ;
 scalar_t__ READ_U32 (TYPE_5__*,char*) ;
 int SEEK (TYPE_5__*,void*) ;
 int SKIP_FOURCC (TYPE_5__*,char*) ;
 int SKIP_U32 (TYPE_5__*,char*) ;
 void* STREAM_POSITION (TYPE_5__*) ;
 scalar_t__ STREAM_SEEKABLE (TYPE_5__*) ;
 scalar_t__ STREAM_STATUS (TYPE_5__*) ;
 int VC_CONTAINER_CAPS_CAN_SEEK ;
 int VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG ;
 int VC_CONTAINER_CAPS_FORCE_TRACK ;
 int VC_CONTAINER_CAPS_HAS_INDEX ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SEEK_FLAG_PRECISE ;
 int VC_CONTAINER_SEEK_MODE_TIME ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_FOURCC (char,char,char,char) ;
 scalar_t__ avi_find_chunk (TYPE_5__*,scalar_t__,scalar_t__*) ;
 scalar_t__ avi_find_list (TYPE_5__*,scalar_t__,scalar_t__*) ;
 scalar_t__ avi_read_stream_header_list (TYPE_5__*,TYPE_8__*,TYPE_18__*) ;
 int avi_reader_close ;
 int avi_reader_read ;
 int avi_reader_seek (TYPE_5__*,int *,int ,int ) ;
 int free (TYPE_6__*) ;
 TYPE_6__* malloc (int) ;
 int memset (TYPE_6__*,int ,int) ;
 TYPE_8__* vc_container_allocate_track (TYPE_5__*,int) ;
 int vc_container_free_track (TYPE_5__*,TYPE_8__*) ;

VC_CONTAINER_STATUS_T avi_reader_open( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   uint32_t chunk_size;
   uint32_t peek_buf[3];
   unsigned int i;
   uint32_t flags, num_streams;
   int64_t offset;


   if (PEEK_BYTES(p_ctx, (uint8_t*)peek_buf, 12) != 12)
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( peek_buf[0] != VC_FOURCC('R','I','F','F') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( peek_buf[2] != VC_FOURCC('A','V','I',' ') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;




   SKIP_FOURCC(p_ctx, "RIFF ID");
   SKIP_U32(p_ctx, "fileSize");
   SKIP_FOURCC(p_ctx, "fileType");


   status = avi_find_list(p_ctx, VC_FOURCC('h','d','r','l'), &chunk_size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      LOG_DEBUG(p_ctx, "'hdrl' LIST not found");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   SKIP_FOURCC(p_ctx, "hdrl");


   status = avi_find_chunk(p_ctx, VC_FOURCC('a','v','i','h'), &chunk_size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      LOG_DEBUG(p_ctx, "'avih' not found");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }


   SKIP_U32(p_ctx, "dwMicroSecPerFrame");
   SKIP_U32(p_ctx, "dwMaxBytesPerSec");
   SKIP_U32(p_ctx, "dwPaddingGranularity");
   flags = READ_U32(p_ctx, "dwFlags");
   SKIP_U32(p_ctx, "dwTotalFrames");
   SKIP_U32(p_ctx, "dwInitialFrames");
   num_streams = READ_U32(p_ctx, "dwStreams");
   SKIP_U32(p_ctx, "dwSuggestedBufferSize");
   SKIP_U32(p_ctx, "dwWidth");
   SKIP_U32(p_ctx, "dwHeight");
   SKIP_U32(p_ctx, "dwReserved0");
   SKIP_U32(p_ctx, "dwReserved1");
   SKIP_U32(p_ctx, "dwReserved2");
   SKIP_U32(p_ctx, "dwReserved3");

   if((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS)
      goto error;


   if ((module = malloc(sizeof(*module))) == ((void*)0))
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks = module->tracks;

   if (num_streams > AVI_TRACKS_MAX)
   {
      LOG_DEBUG(p_ctx, "cannot handle %u tracks, restricted to %d", num_streams, AVI_TRACKS_MAX);
      num_streams = AVI_TRACKS_MAX;
   }

   for (p_ctx->tracks_num = 0; p_ctx->tracks_num != num_streams; p_ctx->tracks_num++)
   {
      p_ctx->tracks[p_ctx->tracks_num] = vc_container_allocate_track(p_ctx, sizeof(*p_ctx->tracks[0]->priv->module));
      if(!p_ctx->tracks[p_ctx->tracks_num]) break;
   }
   if(p_ctx->tracks_num != num_streams)
   { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }


   for (i = 0; i != num_streams; ++i)
   {
      status = avi_read_stream_header_list(p_ctx, p_ctx->tracks[i], p_ctx->tracks[i]->priv->module);
      if(status != VC_CONTAINER_SUCCESS) goto error;
   }


   status = avi_find_list(p_ctx, VC_FOURCC('m','o','v','i'), &chunk_size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      LOG_DEBUG(p_ctx, "'movi' LIST not found");
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto error;
   }


   module->data_offset = STREAM_POSITION(p_ctx);
   module->data_size = chunk_size;

   p_ctx->priv->pf_close = avi_reader_close;
   p_ctx->priv->pf_read = avi_reader_read;
   p_ctx->priv->pf_seek = avi_reader_seek;

   if (flags & AVIF_MUSTUSEINDEX)
   {
      LOG_DEBUG(p_ctx, "AVIF_MUSTUSEINDEX not supported, playback might not work properly");
   }







   if(STREAM_SEEKABLE(p_ctx))
   {
      p_ctx->capabilities |= VC_CONTAINER_CAPS_CAN_SEEK;
      p_ctx->capabilities |= VC_CONTAINER_CAPS_FORCE_TRACK;

      for(i = 0; i < p_ctx->tracks_num; i++)
         if(p_ctx->tracks[i]->priv->module->index_offset) break;

      if (i < p_ctx->tracks_num)
      {
         p_ctx->capabilities |= VC_CONTAINER_CAPS_HAS_INDEX;
         if (flags & AVIF_TRUSTCKTYPE)
            p_ctx->capabilities |= VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG;
      }
      else
      {

         AVI_SKIP_CHUNK(p_ctx, module->data_size);

         status = avi_find_chunk(p_ctx, VC_FOURCC('i','d','x','1'), &chunk_size);
         if (status == VC_CONTAINER_SUCCESS)
         {
            LOG_DEBUG(p_ctx, "'idx1' found");

            module->index_offset = STREAM_POSITION(p_ctx);
            module->index_size = chunk_size;
            p_ctx->capabilities |= VC_CONTAINER_CAPS_HAS_INDEX;
            p_ctx->capabilities |= VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG;
         }


         SEEK(p_ctx, module->data_offset);
      }
   }

   SKIP_FOURCC(p_ctx, "movi");

   for (i = 0; i != num_streams; i++)
   {
      p_ctx->tracks[i]->priv->module->chunk.state = &p_ctx->priv->module->state;
   }
   p_ctx->priv->module->state.data_offset = STREAM_POSITION(p_ctx);







   offset = INT64_C(0);
   avi_reader_seek(p_ctx, &offset, VC_CONTAINER_SEEK_MODE_TIME, VC_CONTAINER_SEEK_FLAG_PRECISE);

   if((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS) goto error;
   return VC_CONTAINER_SUCCESS;

error:
   LOG_DEBUG(p_ctx, "error opening stream (%i)", status);
   for(i = 0; i < p_ctx->tracks_num; i++)
      vc_container_free_track(p_ctx, p_ctx->tracks[i]);
   p_ctx->tracks = ((void*)0);
   p_ctx->tracks_num = 0;
   if (module) free(module);
   p_ctx->priv->module = ((void*)0);
   return status;
}
