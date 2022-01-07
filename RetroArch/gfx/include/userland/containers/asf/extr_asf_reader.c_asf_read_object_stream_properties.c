
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef unsigned int int64_t ;
struct TYPE_29__ {int is_enabled; TYPE_4__* format; TYPE_3__* priv; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_30__ {TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_31__ {int time_offset; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_ES_TYPE_T ;
struct TYPE_28__ {int codec; int flags; scalar_t__ es_type; } ;
struct TYPE_27__ {TYPE_2__* module; } ;
struct TYPE_26__ {int b_valid; } ;
struct TYPE_25__ {TYPE_7__* module; } ;
typedef int GUID_T ;


 int ASF_READ_GUID (TYPE_6__*,unsigned int,int *,char*) ;
 unsigned int ASF_READ_U16 (TYPE_6__*,unsigned int,char*) ;
 unsigned int ASF_READ_U32 (TYPE_6__*,unsigned int,char*) ;
 int ASF_READ_U64 (TYPE_6__*,unsigned int,char*) ;
 int ASF_SKIP_GUID (TYPE_6__*,unsigned int,char*) ;
 int ASF_SKIP_U32 (TYPE_6__*,unsigned int,char*) ;
 int CHECK_POINT (TYPE_6__*,unsigned int) ;
 int SKIP_BYTES (TYPE_6__*,unsigned int) ;
 unsigned int STREAM_POSITION (TYPE_6__*) ;
 scalar_t__ STREAM_STATUS (TYPE_6__*) ;
 int UINT64_C (int) ;

 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 int VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ;
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ;
 scalar_t__ VC_CONTAINER_ES_TYPE_UNKNOWN ;
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int asf_guid_stream_type_audio ;
 int asf_guid_stream_type_video ;
 scalar_t__ asf_read_bitmapinfoheader (TYPE_6__*,TYPE_5__*,unsigned int) ;
 scalar_t__ asf_read_waveformatex (TYPE_6__*,TYPE_5__*,unsigned int) ;
 TYPE_5__* asf_reader_find_track (TYPE_6__*,unsigned int,int) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_object_stream_properties( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *p_track;
   unsigned int ts_length, flags;
   VC_CONTAINER_ES_TYPE_T type = VC_CONTAINER_ES_TYPE_UNKNOWN;
   GUID_T stream_type;
   int64_t offset;

   ASF_READ_GUID(p_ctx, size, &stream_type, "Stream Type");
   ASF_SKIP_GUID(p_ctx, size, "Error Correction Type");


   module->time_offset = ASF_READ_U64(p_ctx, size, "Time Offset") / UINT64_C(10);
   ts_length = ASF_READ_U32(p_ctx, size, "Type-Specific Data Length");
   ASF_SKIP_U32(p_ctx, size, "Error Correction Data Length");
   flags = ASF_READ_U16(p_ctx, size, "Flags");
   ASF_SKIP_U32(p_ctx, size, "Reserved");

   CHECK_POINT(p_ctx, size);


   if(!(flags & 0x7F)) goto skip;

   if(!memcmp(&stream_type, &asf_guid_stream_type_video, sizeof(GUID_T)))
      type = VC_CONTAINER_ES_TYPE_VIDEO;
   else if(!memcmp(&stream_type, &asf_guid_stream_type_audio, sizeof(GUID_T)))
      type = VC_CONTAINER_ES_TYPE_AUDIO;


   if(type == VC_CONTAINER_ES_TYPE_UNKNOWN) goto skip;


   if(ts_length > size) return VC_CONTAINER_ERROR_CORRUPTED;

   p_track = asf_reader_find_track( p_ctx, flags, 1);
   if(!p_track) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;

   p_track->format->es_type = type;

   offset = STREAM_POSITION(p_ctx);
   if(type == VC_CONTAINER_ES_TYPE_AUDIO)
      status = asf_read_waveformatex(p_ctx, p_track, (int64_t)ts_length);
   else if(type == VC_CONTAINER_ES_TYPE_VIDEO)
      status = asf_read_bitmapinfoheader(p_ctx, p_track, (int64_t)ts_length);
   size -= STREAM_POSITION(p_ctx) - offset;

   if(status) return status;

   p_track->priv->module->b_valid = 1;
   p_track->is_enabled = 1;
   p_track->format->flags |= VC_CONTAINER_ES_FORMAT_FLAG_FRAMED;


   switch(p_track->format->codec)
   {
   case 128:

      p_track->format->flags &= ~VC_CONTAINER_ES_FORMAT_FLAG_FRAMED;
      break;
   default: break;
   }

 skip:
   if(size) SKIP_BYTES(p_ctx, size);
   return STREAM_STATUS(p_ctx);
}
