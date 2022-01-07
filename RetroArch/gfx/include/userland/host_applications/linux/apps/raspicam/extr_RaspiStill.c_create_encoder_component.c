
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_24__ {int control; TYPE_5__** output; TYPE_5__** input; int output_num; int input_num; } ;
struct TYPE_18__ {int member_1; int member_0; } ;
struct TYPE_23__ {int enable; scalar_t__ width; scalar_t__ height; int hdr; int quality; int member_4; int member_3; int member_2; int member_1; TYPE_1__ member_0; } ;
struct TYPE_22__ {scalar_t__ buffer_size; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size_min; scalar_t__ buffer_num; scalar_t__ buffer_num_recommended; scalar_t__ buffer_num_min; int name; TYPE_11__* format; } ;
struct TYPE_20__ {scalar_t__ verbose; } ;
struct TYPE_19__ {scalar_t__ width; scalar_t__ height; int quality; scalar_t__ enable; } ;
struct TYPE_21__ {TYPE_3__ common_settings; TYPE_7__* encoder_component; int * encoder_pool; TYPE_2__ thumbnailConfig; scalar_t__ restart_interval; scalar_t__ quality; int encoding; } ;
struct TYPE_17__ {int encoding; } ;
typedef TYPE_4__ RASPISTILL_STATE ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_5__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;
typedef TYPE_6__ MMAL_PARAMETER_THUMBNAIL_CONFIG_T ;
typedef TYPE_7__ MMAL_COMPONENT_T ;


 int MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_PARAMETER_JPEG_Q_FACTOR ;
 int MMAL_PARAMETER_JPEG_RESTART_INTERVAL ;
 int MMAL_PARAMETER_THUMBNAIL_CONFIGURATION ;
 scalar_t__ MMAL_SUCCESS ;
 int fprintf (int ,char*) ;
 scalar_t__ mmal_component_create (int ,TYPE_7__**) ;
 int mmal_component_destroy (TYPE_7__*) ;
 scalar_t__ mmal_component_enable (TYPE_7__*) ;
 int mmal_format_copy (TYPE_11__*,TYPE_11__*) ;
 scalar_t__ mmal_port_format_commit (TYPE_5__*) ;
 scalar_t__ mmal_port_parameter_set (int ,int *) ;
 scalar_t__ mmal_port_parameter_set_uint32 (TYPE_5__*,int ,scalar_t__) ;
 int * mmal_port_pool_create (TYPE_5__*,scalar_t__,scalar_t__) ;
 int stderr ;
 int vcos_log_error (char*,...) ;

__attribute__((used)) static MMAL_STATUS_T create_encoder_component(RASPISTILL_STATE *state)
{
   MMAL_COMPONENT_T *encoder = 0;
   MMAL_PORT_T *encoder_input = ((void*)0), *encoder_output = ((void*)0);
   MMAL_STATUS_T status;
   MMAL_POOL_T *pool;

   status = mmal_component_create(MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER, &encoder);

   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to create JPEG encoder component");
      goto error;
   }

   if (!encoder->input_num || !encoder->output_num)
   {
      status = MMAL_ENOSYS;
      vcos_log_error("JPEG encoder doesn't have input/output ports");
      goto error;
   }

   encoder_input = encoder->input[0];
   encoder_output = encoder->output[0];


   mmal_format_copy(encoder_output->format, encoder_input->format);


   encoder_output->format->encoding = state->encoding;

   encoder_output->buffer_size = encoder_output->buffer_size_recommended;

   if (encoder_output->buffer_size < encoder_output->buffer_size_min)
      encoder_output->buffer_size = encoder_output->buffer_size_min;

   encoder_output->buffer_num = encoder_output->buffer_num_recommended;

   if (encoder_output->buffer_num < encoder_output->buffer_num_min)
      encoder_output->buffer_num = encoder_output->buffer_num_min;


   status = mmal_port_format_commit(encoder_output);

   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to set format on video encoder output port");
      goto error;
   }


   status = mmal_port_parameter_set_uint32(encoder_output, MMAL_PARAMETER_JPEG_Q_FACTOR, state->quality);

   if (status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to set JPEG quality");
      goto error;
   }


   status = mmal_port_parameter_set_uint32(encoder_output, MMAL_PARAMETER_JPEG_RESTART_INTERVAL, state->restart_interval);

   if (state->restart_interval && status != MMAL_SUCCESS)
   {
      vcos_log_error("Unable to set JPEG restart interval");
      goto error;
   }


   {
      MMAL_PARAMETER_THUMBNAIL_CONFIG_T param_thumb = {{MMAL_PARAMETER_THUMBNAIL_CONFIGURATION, sizeof(MMAL_PARAMETER_THUMBNAIL_CONFIG_T)}, 0, 0, 0, 0};

      if ( state->thumbnailConfig.enable &&
            state->thumbnailConfig.width > 0 && state->thumbnailConfig.height > 0 )
      {

         param_thumb.enable = 1;
         param_thumb.width = state->thumbnailConfig.width;
         param_thumb.height = state->thumbnailConfig.height;
         param_thumb.quality = state->thumbnailConfig.quality;
      }
      status = mmal_port_parameter_set(encoder->control, &param_thumb.hdr);
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

   return status;
}
