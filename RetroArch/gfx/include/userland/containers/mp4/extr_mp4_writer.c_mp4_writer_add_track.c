
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_19__ {TYPE_3__* priv; int format; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
struct TYPE_20__ {size_t tracks_num; TYPE_4__** tracks; } ;
typedef TYPE_5__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_21__ {int flags; int codec; int extradata_size; scalar_t__ codec_variant; } ;
typedef TYPE_6__ VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_18__ {TYPE_2__* module; } ;
struct TYPE_17__ {int offset; TYPE_1__* sample_table; scalar_t__ fourcc; } ;
struct TYPE_16__ {int entry_size; } ;


 size_t MP4_SAMPLE_TABLE_CO64 ;
 size_t MP4_SAMPLE_TABLE_CTTS ;
 size_t MP4_SAMPLE_TABLE_STCO ;
 size_t MP4_SAMPLE_TABLE_STSC ;
 size_t MP4_SAMPLE_TABLE_STSS ;
 size_t MP4_SAMPLE_TABLE_STSZ ;
 size_t MP4_SAMPLE_TABLE_STTS ;
 size_t MP4_TRACKS_MAX ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 scalar_t__ VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_FOURCC (char,char,char,char) ;
 TYPE_4__* vc_container_allocate_track (TYPE_5__*,int) ;
 int vc_container_format_copy (int ,TYPE_6__*,int ) ;
 int vc_container_free_track (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ vc_container_track_allocate_extradata (TYPE_5__*,TYPE_4__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_writer_add_track( VC_CONTAINER_T *p_ctx, VC_CONTAINER_ES_FORMAT_T *format )
{
   VC_CONTAINER_STATUS_T status;
   VC_CONTAINER_TRACK_T *track;
   uint32_t type = 0;

   if(!(format->flags & VC_CONTAINER_ES_FORMAT_FLAG_FRAMED))
      return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;


   switch(format->codec)
   {
   case 142: type = VC_FOURCC('s','a','m','r'); break;
   case 141: type = VC_FOURCC('s','a','w','b'); break;
   case 140: type = VC_FOURCC('s','a','w','p'); break;
   case 139: type = VC_FOURCC('s','e','v','c'); break;
   case 130: type = VC_FOURCC('m','p','4','a'); break;
   case 128: type = VC_FOURCC('m','p','4','a'); break;

   case 129: type = VC_FOURCC('m','p','4','v'); break;
   case 136: type = VC_FOURCC('m','p','4','v'); break;
   case 138: type = VC_FOURCC('s','2','6','3'); break;
   case 137:
      if(format->codec_variant == VC_FOURCC('a','v','c','C')) type = VC_FOURCC('a','v','c','1'); break;
   case 135: type = VC_FOURCC('j','p','e','g'); break;
   case 134: type = VC_FOURCC('m','j','p','a'); break;
   case 133: type = VC_FOURCC('m','j','p','b'); break;
   case 132: type = VC_FOURCC('m','p','e','g'); break;
   case 131: type = VC_FOURCC('m','p','e','g'); break;

   default: type = 0; break;
   }

   if(!type) return VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED;


   if(p_ctx->tracks_num >= MP4_TRACKS_MAX) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
   p_ctx->tracks[p_ctx->tracks_num] = track =
      vc_container_allocate_track(p_ctx, sizeof(*p_ctx->tracks[0]->priv->module));
   if(!track) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   if(format->extradata_size)
   {
      status = vc_container_track_allocate_extradata( p_ctx, track, format->extradata_size );
      if(status) goto error;
   }

   vc_container_format_copy(track->format, format, format->extradata_size);
   track->priv->module->fourcc = type;
   track->priv->module->offset = -1;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STTS].entry_size = 8;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STSZ].entry_size = 4;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STSC].entry_size = 12;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STCO].entry_size = 4;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STSS].entry_size = 4;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_CO64].entry_size = 8;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_CTTS].entry_size = 8;

   p_ctx->tracks_num++;
   return VC_CONTAINER_SUCCESS;

 error:
   vc_container_free_track(p_ctx, track);
   return status;
}
