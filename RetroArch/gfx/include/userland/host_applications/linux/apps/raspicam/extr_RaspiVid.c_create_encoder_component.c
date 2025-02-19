
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_23__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_19__ ;
typedef struct TYPE_33__ TYPE_14__ ;
typedef struct TYPE_32__ TYPE_13__ ;
typedef struct TYPE_31__ TYPE_12__ ;
typedef struct TYPE_30__ TYPE_11__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef int param ;
struct TYPE_44__ {int buffer_size; int buffer_size_recommended; int buffer_size_min; scalar_t__ buffer_num; scalar_t__ buffer_num_recommended; scalar_t__ buffer_num_min; int name; TYPE_23__* format; } ;
struct TYPE_42__ {int width; int height; scalar_t__ verbose; } ;
struct TYPE_43__ {scalar_t__ encoding; scalar_t__ level; scalar_t__ bitrate; int intraperiod; int slices; int quantisationParameter; int framerate; int intra_refresh_type; TYPE_14__* encoder_component; TYPE_7__ common_settings; int * encoder_pool; int inlineMotionVectors; int addSPSTiming; int bInlineHeaders; int immutableInput; int profile; } ;
struct TYPE_41__ {scalar_t__ level; int profile; } ;
struct TYPE_40__ {int member_1; int member_0; } ;
struct TYPE_39__ {int member_1; int member_0; } ;
struct TYPE_35__ {int den; scalar_t__ num; } ;
struct TYPE_37__ {TYPE_1__ frame_rate; } ;
struct TYPE_38__ {TYPE_2__ video; } ;
struct TYPE_36__ {scalar_t__ encoding; scalar_t__ bitrate; TYPE_3__* es; } ;
struct TYPE_34__ {int size; int id; } ;
struct TYPE_33__ {TYPE_9__** output; TYPE_9__** input; int output_num; int input_num; } ;
struct TYPE_32__ {int member_1; TYPE_19__ hdr; TYPE_5__ member_0; } ;
struct TYPE_31__ {int refresh_mode; TYPE_19__ hdr; scalar_t__ pir_mbs; scalar_t__ cir_mbs; scalar_t__ air_ref; scalar_t__ air_mbs; } ;
struct TYPE_30__ {TYPE_19__ hdr; TYPE_6__* profile; } ;
struct TYPE_29__ {TYPE_19__ hdr; int member_1; TYPE_4__ member_0; } ;
typedef TYPE_8__ RASPIVID_STATE ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_9__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;
typedef TYPE_10__ MMAL_PARAMETER_VIDEO_RATECONTROL_T ;
typedef TYPE_11__ MMAL_PARAMETER_VIDEO_PROFILE_T ;
typedef TYPE_12__ MMAL_PARAMETER_VIDEO_INTRA_REFRESH_T ;
typedef TYPE_13__ MMAL_PARAMETER_UINT32_T ;
typedef TYPE_14__ MMAL_COMPONENT_T ;


 scalar_t__ MAX_BITRATE_LEVEL4 ;
 scalar_t__ MAX_BITRATE_LEVEL42 ;
 scalar_t__ MAX_BITRATE_MJPEG ;
 int MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENCODING_H264 ;
 scalar_t__ MMAL_ENCODING_MJPEG ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_PARAMETER_INTRAPERIOD ;
 int MMAL_PARAMETER_MB_ROWS_PER_SLICE ;
 int MMAL_PARAMETER_PROFILE ;
 int MMAL_PARAMETER_RATECONTROL ;
 int MMAL_PARAMETER_VIDEO_ENCODE_INITIAL_QUANT ;
 int MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER ;
 int MMAL_PARAMETER_VIDEO_ENCODE_INLINE_VECTORS ;
 int MMAL_PARAMETER_VIDEO_ENCODE_MAX_QUANT ;
 int MMAL_PARAMETER_VIDEO_ENCODE_MIN_QUANT ;
 int MMAL_PARAMETER_VIDEO_ENCODE_SPS_TIMING ;
 int MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT ;
 int MMAL_PARAMETER_VIDEO_INTRA_REFRESH ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ MMAL_VIDEO_LEVEL_H264_4 ;
 scalar_t__ MMAL_VIDEO_LEVEL_H264_42 ;
 int MMAL_VIDEO_RATECONTROL_DEFAULT ;
 int VCOS_ALIGN_UP (int,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ mmal_component_create (int ,TYPE_14__**) ;
 int mmal_component_destroy (TYPE_14__*) ;
 scalar_t__ mmal_component_enable (TYPE_14__*) ;
 int mmal_format_copy (TYPE_23__*,TYPE_23__*) ;
 scalar_t__ mmal_port_format_commit (TYPE_9__*) ;
 scalar_t__ mmal_port_parameter_get (TYPE_9__*,TYPE_19__*) ;
 scalar_t__ mmal_port_parameter_set (TYPE_9__*,TYPE_19__*) ;
 scalar_t__ mmal_port_parameter_set_boolean (TYPE_9__*,int ,int ) ;
 scalar_t__ mmal_port_parameter_set_uint32 (TYPE_9__*,int ,int) ;
 int * mmal_port_pool_create (TYPE_9__*,scalar_t__,int) ;
 int stderr ;
 int vcos_log_error (char*,...) ;
 int vcos_log_warn (char*) ;

__attribute__((used)) static MMAL_STATUS_T create_encoder_component(RASPIVID_STATE *state)
{
   MMAL_COMPONENT_T *encoder = 0;
   MMAL_PORT_T *encoder_input = ((void*)0), *encoder_output = ((void*)0);
   MMAL_STATUS_T status;
   MMAL_POOL_T *pool;

   status = mmal_component_create(MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER, &encoder);

   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to create video encoder component");
      goto error;
   }

   if (!encoder->input_num || !encoder->output_num)
   {
      status = MMAL_ENOSYS;
      vcos_log_error("Video encoder doesn't have input/output ports");
      goto error;
   }

   encoder_input = encoder->input[0];
   encoder_output = encoder->output[0];


   mmal_format_copy(encoder_output->format, encoder_input->format);


   encoder_output->format->encoding = state->encoding;

   if(state->encoding == MMAL_ENCODING_H264)
   {
      if(state->level == MMAL_VIDEO_LEVEL_H264_4)
      {
         if(state->bitrate > MAX_BITRATE_LEVEL4)
         {
            fprintf(stderr, "Bitrate too high: Reducing to 25MBit/s\n");
            state->bitrate = MAX_BITRATE_LEVEL4;
         }
      }
      else
      {
         if(state->bitrate > MAX_BITRATE_LEVEL42)
         {
            fprintf(stderr, "Bitrate too high: Reducing to 62.5MBit/s\n");
            state->bitrate = MAX_BITRATE_LEVEL42;
         }
      }
   }
   else if(state->encoding == MMAL_ENCODING_MJPEG)
   {
      if(state->bitrate > MAX_BITRATE_MJPEG)
      {
         fprintf(stderr, "Bitrate too high: Reducing to 25MBit/s\n");
         state->bitrate = MAX_BITRATE_MJPEG;
      }
   }

   encoder_output->format->bitrate = state->bitrate;

   if (state->encoding == MMAL_ENCODING_H264)
      encoder_output->buffer_size = encoder_output->buffer_size_recommended;
   else
      encoder_output->buffer_size = 256<<10;

   if (encoder_output->buffer_size < encoder_output->buffer_size_min)
      encoder_output->buffer_size = encoder_output->buffer_size_min;

   encoder_output->buffer_num = encoder_output->buffer_num_recommended;

   if (encoder_output->buffer_num < encoder_output->buffer_num_min)
      encoder_output->buffer_num = encoder_output->buffer_num_min;



   encoder_output->format->es->video.frame_rate.num = 0;
   encoder_output->format->es->video.frame_rate.den = 1;


   status = mmal_port_format_commit(encoder_output);

   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to set format on video encoder output port");
      goto error;
   }


   if (0)
   {
      MMAL_PARAMETER_VIDEO_RATECONTROL_T param = {{ MMAL_PARAMETER_RATECONTROL, sizeof(param)}, MMAL_VIDEO_RATECONTROL_DEFAULT};
      status = mmal_port_parameter_set(encoder_output, &param.hdr);
      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to set ratecontrol");
         goto error;
      }

   }

   if (state->encoding == MMAL_ENCODING_H264 &&
         state->intraperiod != -1)
   {
      MMAL_PARAMETER_UINT32_T param = {{ MMAL_PARAMETER_INTRAPERIOD, sizeof(param)}, state->intraperiod};
      status = mmal_port_parameter_set(encoder_output, &param.hdr);
      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to set intraperiod");
         goto error;
      }
   }

   if (state->encoding == MMAL_ENCODING_H264 && state->slices > 1 && state->common_settings.width <= 1280)
   {
      int frame_mb_rows = VCOS_ALIGN_UP(state->common_settings.height, 16) >> 4;

      if (state->slices > frame_mb_rows)
      {
         fprintf(stderr,"H264 Slice count (%d) exceeds number of macroblock rows (%d). Setting slices to %d.\n", state->slices, frame_mb_rows, frame_mb_rows);

      }
      int slice_row_mb = frame_mb_rows/state->slices;
      if (frame_mb_rows - state->slices*slice_row_mb)
         slice_row_mb++;

      status = mmal_port_parameter_set_uint32(encoder_output, MMAL_PARAMETER_MB_ROWS_PER_SLICE, slice_row_mb);
      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to set number of slices");
         goto error;
      }
   }

   if (state->encoding == MMAL_ENCODING_H264 &&
       state->quantisationParameter)
   {
      MMAL_PARAMETER_UINT32_T param = {{ MMAL_PARAMETER_VIDEO_ENCODE_INITIAL_QUANT, sizeof(param)}, state->quantisationParameter};
      status = mmal_port_parameter_set(encoder_output, &param.hdr);
      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to set initial QP");
         goto error;
      }

      MMAL_PARAMETER_UINT32_T param2 = {{ MMAL_PARAMETER_VIDEO_ENCODE_MIN_QUANT, sizeof(param)}, state->quantisationParameter};
      status = mmal_port_parameter_set(encoder_output, &param2.hdr);
      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to set min QP");
         goto error;
      }

      MMAL_PARAMETER_UINT32_T param3 = {{ MMAL_PARAMETER_VIDEO_ENCODE_MAX_QUANT, sizeof(param)}, state->quantisationParameter};
      status = mmal_port_parameter_set(encoder_output, &param3.hdr);
      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to set max QP");
         goto error;
      }
   }

   if (state->encoding == MMAL_ENCODING_H264)
   {
      MMAL_PARAMETER_VIDEO_PROFILE_T param;
      param.hdr.id = MMAL_PARAMETER_PROFILE;
      param.hdr.size = sizeof(param);

      param.profile[0].profile = state->profile;

      if((VCOS_ALIGN_UP(state->common_settings.width,16) >> 4) * (VCOS_ALIGN_UP(state->common_settings.height,16) >> 4) * state->framerate > 245760)
      {
         if((VCOS_ALIGN_UP(state->common_settings.width,16) >> 4) * (VCOS_ALIGN_UP(state->common_settings.height,16) >> 4) * state->framerate <= 522240)
         {
            fprintf(stderr, "Too many macroblocks/s: Increasing H264 Level to 4.2\n");
            state->level=MMAL_VIDEO_LEVEL_H264_42;
         }
         else
         {
            vcos_log_error("Too many macroblocks/s requested");
            status = MMAL_EINVAL;
            goto error;
         }
      }

      param.profile[0].level = state->level;

      status = mmal_port_parameter_set(encoder_output, &param.hdr);
      if (status != MMAL_SUCCESS)
      {
         vcos_log_error("Unable to set H264 profile");
         goto error;
      }
   }

   if (mmal_port_parameter_set_boolean(encoder_input, MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT, state->immutableInput) != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to set immutable input flag");

   }

   if (state->encoding == MMAL_ENCODING_H264)
   {

      if (mmal_port_parameter_set_boolean(encoder_output, MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER, state->bInlineHeaders) != MMAL_SUCCESS)
      {
         vcos_log_error("failed to set INLINE HEADER FLAG parameters");

      }


      if (mmal_port_parameter_set_boolean(encoder_output, MMAL_PARAMETER_VIDEO_ENCODE_SPS_TIMING, state->addSPSTiming) != MMAL_SUCCESS)
      {
         vcos_log_error("failed to set SPS TIMINGS FLAG parameters");

      }


      if (mmal_port_parameter_set_boolean(encoder_output, MMAL_PARAMETER_VIDEO_ENCODE_INLINE_VECTORS, state->inlineMotionVectors) != MMAL_SUCCESS)
      {
         vcos_log_error("failed to set INLINE VECTORS parameters");

      }


      if ( state->intra_refresh_type != -1)
      {
         MMAL_PARAMETER_VIDEO_INTRA_REFRESH_T param;
         param.hdr.id = MMAL_PARAMETER_VIDEO_INTRA_REFRESH;
         param.hdr.size = sizeof(param);


         status = mmal_port_parameter_get(encoder_output, &param.hdr);
         if (status != MMAL_SUCCESS)
         {
            vcos_log_warn("Unable to get existing H264 intra-refresh values. Please update your firmware");

            param.air_mbs = param.air_ref = param.cir_mbs = param.pir_mbs = 0;
         }

         param.refresh_mode = state->intra_refresh_type;




         status = mmal_port_parameter_set(encoder_output, &param.hdr);
         if (status != MMAL_SUCCESS)
         {
            vcos_log_error("Unable to set H264 intra-refresh values");
            goto error;
         }
      }
   }


   status = mmal_component_enable(encoder);

   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to enable video encoder component");
      goto error;
   }


   pool = mmal_port_pool_create(encoder_output, encoder_output->buffer_num, encoder_output->buffer_size);

   if (!pool)
   {
      vcos_log_error("Failed to create buffer header pool for encoder output port %s", encoder_output->name);
   }

   state->encoder_pool = pool;
   state->encoder_component = encoder;

   if (state->common_settings.verbose)
      fprintf(stderr, "Encoder component done\n");

   return status;

error:
   if (encoder)
      mmal_component_destroy(encoder);

   state->encoder_component = ((void*)0);

   return status;
}
