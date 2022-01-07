
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef enum CodecID { ____Placeholder_CodecID } CodecID ;
struct TYPE_31__ {TYPE_14__* codec_context; int output_buffer_size; scalar_t__ output_buffer; } ;
struct TYPE_30__ {TYPE_11__** output; TYPE_1__* priv; } ;
struct TYPE_29__ {TYPE_13__* format; TYPE_8__* component; } ;
struct TYPE_28__ {int (* pf_set_format ) (TYPE_11__*) ;} ;
struct TYPE_26__ {int bits_per_sample; } ;
struct TYPE_27__ {TYPE_4__ audio; } ;
struct TYPE_24__ {int bits_per_sample; int block_align; int channels; int sample_rate; } ;
struct TYPE_25__ {TYPE_2__ audio; } ;
struct TYPE_23__ {TYPE_9__* module; } ;
struct TYPE_22__ {scalar_t__ sample_fmt; int flags; scalar_t__ extradata; scalar_t__ extradata_size; int bits_per_coded_sample; int bit_rate; int block_align; int channels; int sample_rate; } ;
struct TYPE_21__ {scalar_t__ extradata_size; int extradata; TYPE_3__* es; int bitrate; int encoding; } ;
struct TYPE_20__ {TYPE_5__* es; int encoding; } ;
struct TYPE_19__ {TYPE_6__* priv; TYPE_12__* format; } ;
struct TYPE_18__ {int capabilities; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_7__ MMAL_PORT_T ;
typedef TYPE_8__ MMAL_COMPONENT_T ;
typedef TYPE_9__ MMAL_COMPONENT_MODULE_T ;
typedef TYPE_10__ AVCodec ;


 int AVCODEC_MAX_AUDIO_FRAME_SIZE ;
 scalar_t__ AV_SAMPLE_FMT_NONE ;
 scalar_t__ AV_SAMPLE_FMT_S16 ;
 int CODEC_CAP_TRUNCATED ;
 int CODEC_FLAG_TRUNCATED ;
 int CODEC_ID_NONE ;
 scalar_t__ FF_INPUT_BUFFER_PADDING_SIZE ;
 int LOG_DEBUG (char*,scalar_t__) ;
 int LOG_ERROR (char*,...) ;
 int MMAL_EIO ;
 int MMAL_ENXIO ;
 int MMAL_SUCCESS ;
 int av_free (scalar_t__) ;
 scalar_t__ av_malloc (int ) ;
 TYPE_10__* avcodec_find_decoder (int) ;
 scalar_t__ avcodec_open (TYPE_14__*,TYPE_10__*) ;
 int encoding_to_codecid (int ) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int mmal_format_copy (TYPE_12__*,TYPE_13__*) ;
 int samplefmt_to_encoding (scalar_t__) ;
 int samplefmt_to_sample_size (scalar_t__) ;
 int stub1 (TYPE_11__*) ;
 scalar_t__ vcos_calloc (int,scalar_t__,char*) ;

__attribute__((used)) static MMAL_STATUS_T avcodec_input_port_set_format(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   enum CodecID codec_id;
   AVCodec *codec;

   codec_id = encoding_to_codecid(port->format->encoding);
   if (codec_id == CODEC_ID_NONE ||
       !(codec = avcodec_find_decoder(codec_id)))
   {
      LOG_ERROR("ffmpeg codec id %d (for %4.4s) not recognized",
                codec_id, (char *)&port->format->encoding);
      return MMAL_ENXIO;
   }

   module->output_buffer_size = AVCODEC_MAX_AUDIO_FRAME_SIZE;
   if (module->output_buffer)
      av_free(module->output_buffer);
   module->output_buffer = av_malloc(module->output_buffer_size);

   module->codec_context->sample_rate = port->format->es->audio.sample_rate;
   module->codec_context->channels = port->format->es->audio.channels;
   module->codec_context->block_align = port->format->es->audio.block_align;
   module->codec_context->bit_rate = port->format->bitrate;
   module->codec_context->bits_per_coded_sample = port->format->es->audio.bits_per_sample;
   module->codec_context->extradata_size = port->format->extradata_size;
   module->codec_context->extradata =
      vcos_calloc(1, port->format->extradata_size + FF_INPUT_BUFFER_PADDING_SIZE,
                  "avcodec extradata");
   if (module->codec_context->extradata)
      memcpy(module->codec_context->extradata, port->format->extradata,
             port->format->extradata_size);

   if (codec->capabilities & CODEC_CAP_TRUNCATED)
      module->codec_context->flags |= CODEC_FLAG_TRUNCATED;

   if (avcodec_open(module->codec_context, codec) < 0)
   {
      LOG_ERROR("could not open codec");
      return MMAL_EIO;
   }


   if (module->codec_context->sample_fmt == AV_SAMPLE_FMT_NONE)
      module->codec_context->sample_fmt = AV_SAMPLE_FMT_S16;


   mmal_format_copy(component->output[0]->format, port->format);
   LOG_DEBUG("avcodec output format %i", module->codec_context->sample_fmt);
   component->output[0]->format->encoding = samplefmt_to_encoding(module->codec_context->sample_fmt);
   component->output[0]->format->es->audio.bits_per_sample =
      samplefmt_to_sample_size(module->codec_context->sample_fmt);

   component->output[0]->priv->pf_set_format(component->output[0]);
   return MMAL_SUCCESS;
}
