#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  enum CodecID { ____Placeholder_CodecID } CodecID ;
struct TYPE_31__ {TYPE_14__* codec_context; int /*<<< orphan*/  output_buffer_size; scalar_t__ output_buffer; } ;
struct TYPE_30__ {TYPE_11__** output; TYPE_1__* priv; } ;
struct TYPE_29__ {TYPE_13__* format; TYPE_8__* component; } ;
struct TYPE_28__ {int /*<<< orphan*/  (* pf_set_format ) (TYPE_11__*) ;} ;
struct TYPE_26__ {int /*<<< orphan*/  bits_per_sample; } ;
struct TYPE_27__ {TYPE_4__ audio; } ;
struct TYPE_24__ {int /*<<< orphan*/  bits_per_sample; int /*<<< orphan*/  block_align; int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_25__ {TYPE_2__ audio; } ;
struct TYPE_23__ {TYPE_9__* module; } ;
struct TYPE_22__ {scalar_t__ sample_fmt; int /*<<< orphan*/  flags; scalar_t__ extradata; scalar_t__ extradata_size; int /*<<< orphan*/  bits_per_coded_sample; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  block_align; int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_21__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; TYPE_3__* es; int /*<<< orphan*/  bitrate; int /*<<< orphan*/  encoding; } ;
struct TYPE_20__ {TYPE_5__* es; int /*<<< orphan*/  encoding; } ;
struct TYPE_19__ {TYPE_6__* priv; TYPE_12__* format; } ;
struct TYPE_18__ {int capabilities; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_7__ MMAL_PORT_T ;
typedef  TYPE_8__ MMAL_COMPONENT_T ;
typedef  TYPE_9__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_10__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AVCODEC_MAX_AUDIO_FRAME_SIZE ; 
 scalar_t__ AV_SAMPLE_FMT_NONE ; 
 scalar_t__ AV_SAMPLE_FMT_S16 ; 
 int CODEC_CAP_TRUNCATED ; 
 int /*<<< orphan*/  CODEC_FLAG_TRUNCATED ; 
 int CODEC_ID_NONE ; 
 scalar_t__ FF_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  MMAL_EIO ; 
 int /*<<< orphan*/  MMAL_ENXIO ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_14__*,TYPE_10__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_11__*) ; 
 scalar_t__ FUNC12 (int,scalar_t__,char*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC13(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   enum CodecID codec_id;
   AVCodec *codec;

   codec_id = FUNC6(port->format->encoding);
   if (codec_id == CODEC_ID_NONE ||
       !(codec = FUNC4(codec_id)))
   {
      FUNC1("ffmpeg codec id %d (for %4.4s) not recognized",
                codec_id, (char *)&port->format->encoding);
      return MMAL_ENXIO;
   }

   module->output_buffer_size = AVCODEC_MAX_AUDIO_FRAME_SIZE;
   if (module->output_buffer)
      FUNC2(module->output_buffer);
   module->output_buffer = FUNC3(module->output_buffer_size);

   module->codec_context->sample_rate  = port->format->es->audio.sample_rate;
   module->codec_context->channels  = port->format->es->audio.channels;
   module->codec_context->block_align = port->format->es->audio.block_align;
   module->codec_context->bit_rate = port->format->bitrate;
   module->codec_context->bits_per_coded_sample = port->format->es->audio.bits_per_sample;
   module->codec_context->extradata_size  = port->format->extradata_size;
   module->codec_context->extradata =
      FUNC12(1, port->format->extradata_size + FF_INPUT_BUFFER_PADDING_SIZE,
                  "avcodec extradata");
   if (module->codec_context->extradata)
      FUNC7(module->codec_context->extradata, port->format->extradata,
             port->format->extradata_size);

   if (codec->capabilities & CODEC_CAP_TRUNCATED)
      module->codec_context->flags |= CODEC_FLAG_TRUNCATED;

   if (FUNC5(module->codec_context, codec) < 0)
   {
      FUNC1("could not open codec");
      return MMAL_EIO;
   }

   /* Set a default format */
   if (module->codec_context->sample_fmt == AV_SAMPLE_FMT_NONE)
      module->codec_context->sample_fmt = AV_SAMPLE_FMT_S16;

   /* Copy format to output */
   FUNC8(component->output[0]->format, port->format);
   FUNC0("avcodec output format %i", module->codec_context->sample_fmt);
   component->output[0]->format->encoding = FUNC9(module->codec_context->sample_fmt);
   component->output[0]->format->es->audio.bits_per_sample =
      FUNC10(module->codec_context->sample_fmt);

   component->output[0]->priv->pf_set_format(component->output[0]);
   return MMAL_SUCCESS;
}