
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_25__ {int flags; int extradata; scalar_t__ extradata_size; TYPE_8__* type; int bitrate; int codec_variant; int codec; int es_type; } ;
typedef TYPE_9__ VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_23__ {int block_align; int bits_per_sample; int sample_rate; int channels; } ;
struct TYPE_21__ {int par_den; int par_num; int frame_rate_den; int frame_rate_num; int visible_height; int visible_width; int height; int width; } ;
struct TYPE_24__ {TYPE_7__ audio; TYPE_5__ video; } ;
struct TYPE_22__ {int block_align; int bits_per_sample; int sample_rate; int channels; } ;
struct TYPE_19__ {int den; int num; } ;
struct TYPE_18__ {int den; int num; } ;
struct TYPE_17__ {int height; int width; } ;
struct TYPE_20__ {TYPE_3__ par; TYPE_2__ frame_rate; TYPE_1__ crop; int height; int width; } ;
struct TYPE_16__ {TYPE_6__ audio; TYPE_4__ video; } ;
struct TYPE_15__ {int type; scalar_t__ extradata_size; int extradata; TYPE_12__* es; int flags; int bitrate; int encoding_variant; int encoding; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_10__ MMAL_ES_FORMAT_T ;


 int LOG_ERROR (char*,...) ;
 scalar_t__ MMAL_EINVAL ;
 int MMAL_ES_FORMAT_FLAG_FRAMED ;

 int MMAL_ES_TYPE_UNKNOWN ;

 scalar_t__ MMAL_SUCCESS ;
 int VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ;
 int container_to_mmal_encoding (int ) ;
 int container_to_mmal_es_type (int ) ;
 int container_to_mmal_variant (int ,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (TYPE_12__*,int ,int) ;
 scalar_t__ mmal_format_extradata_alloc (TYPE_10__*,scalar_t__) ;

__attribute__((used)) static MMAL_STATUS_T container_to_mmal_format(MMAL_ES_FORMAT_T *format,
   VC_CONTAINER_ES_FORMAT_T *container_format)
{
   format->type = container_to_mmal_es_type(container_format->es_type);
   if(format->type == MMAL_ES_TYPE_UNKNOWN)
      return MMAL_EINVAL;

   format->encoding = container_to_mmal_encoding(container_format->codec);
   format->encoding_variant = container_to_mmal_variant(container_format->codec, container_format->codec_variant);
   format->bitrate = container_format->bitrate;
   format->flags = (container_format->flags & VC_CONTAINER_ES_FORMAT_FLAG_FRAMED) ?
      MMAL_ES_FORMAT_FLAG_FRAMED : 0;
   memset(format->es, 0, sizeof(*format->es));

   switch(format->type)
   {
   case 128:
      format->es->video.width = container_format->type->video.width;
      format->es->video.height = container_format->type->video.height;
      format->es->video.crop.width = container_format->type->video.visible_width;
      format->es->video.crop.height = container_format->type->video.visible_height;
      format->es->video.frame_rate.num = container_format->type->video.frame_rate_num;
      format->es->video.frame_rate.den = container_format->type->video.frame_rate_den;
      format->es->video.par.num = container_format->type->video.par_num;
      format->es->video.par.den = container_format->type->video.par_den;
      break;
   case 129:
      format->es->audio.channels = container_format->type->audio.channels;
      format->es->audio.sample_rate = container_format->type->audio.sample_rate;
      format->es->audio.bits_per_sample = container_format->type->audio.bits_per_sample;
      format->es->audio.block_align = container_format->type->audio.block_align;
      break;
   default:
      LOG_ERROR("format es type not handled (%i)", (int)format->type);
      break;
   }

   if(container_format->extradata_size)
   {
      MMAL_STATUS_T status = mmal_format_extradata_alloc(format, container_format->extradata_size);
      if(status != MMAL_SUCCESS)
      {
         LOG_ERROR("couldn't allocate extradata");
         return status;
      }
      format->extradata_size = container_format->extradata_size;
      memcpy(format->extradata, container_format->extradata, format->extradata_size);
   }

   return MMAL_SUCCESS;
}
