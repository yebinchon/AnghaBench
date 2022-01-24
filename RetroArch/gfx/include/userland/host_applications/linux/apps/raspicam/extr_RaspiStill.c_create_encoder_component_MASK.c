#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  control; TYPE_5__** output; TYPE_5__** input; int /*<<< orphan*/  output_num; int /*<<< orphan*/  input_num; } ;
struct TYPE_18__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_23__ {int enable; scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  hdr; int /*<<< orphan*/  quality; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
struct TYPE_22__ {scalar_t__ buffer_size; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size_min; scalar_t__ buffer_num; scalar_t__ buffer_num_recommended; scalar_t__ buffer_num_min; int /*<<< orphan*/  name; TYPE_11__* format; } ;
struct TYPE_20__ {scalar_t__ verbose; } ;
struct TYPE_19__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  quality; scalar_t__ enable; } ;
struct TYPE_21__ {TYPE_3__ common_settings; TYPE_7__* encoder_component; int /*<<< orphan*/ * encoder_pool; TYPE_2__ thumbnailConfig; scalar_t__ restart_interval; scalar_t__ quality; int /*<<< orphan*/  encoding; } ;
struct TYPE_17__ {int /*<<< orphan*/  encoding; } ;
typedef  TYPE_4__ RASPISTILL_STATE ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_5__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_POOL_T ;
typedef  TYPE_6__ MMAL_PARAMETER_THUMBNAIL_CONFIG_T ;
typedef  TYPE_7__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER ; 
 scalar_t__ MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_PARAMETER_JPEG_Q_FACTOR ; 
 int /*<<< orphan*/  MMAL_PARAMETER_JPEG_RESTART_INTERVAL ; 
 int /*<<< orphan*/  MMAL_PARAMETER_THUMBNAIL_CONFIGURATION ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,TYPE_11__*) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_5__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC10(RASPISTILL_STATE *state)
{
   MMAL_COMPONENT_T *encoder = 0;
   MMAL_PORT_T *encoder_input = NULL, *encoder_output = NULL;
   MMAL_STATUS_T status;
   MMAL_POOL_T *pool;

   status = FUNC1(MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER, &encoder);

   if (status != MMAL_SUCCESS)
   {
      FUNC9("Unable to create JPEG encoder component");
      goto error;
   }

   if (!encoder->input_num || !encoder->output_num)
   {
      status = MMAL_ENOSYS;
      FUNC9("JPEG encoder doesn't have input/output ports");
      goto error;
   }

   encoder_input = encoder->input[0];
   encoder_output = encoder->output[0];

   // We want same format on input and output
   FUNC4(encoder_output->format, encoder_input->format);

   // Specify out output format
   encoder_output->format->encoding = state->encoding;

   encoder_output->buffer_size = encoder_output->buffer_size_recommended;

   if (encoder_output->buffer_size < encoder_output->buffer_size_min)
      encoder_output->buffer_size = encoder_output->buffer_size_min;

   encoder_output->buffer_num = encoder_output->buffer_num_recommended;

   if (encoder_output->buffer_num < encoder_output->buffer_num_min)
      encoder_output->buffer_num = encoder_output->buffer_num_min;

   // Commit the port changes to the output port
   status = FUNC5(encoder_output);

   if (status != MMAL_SUCCESS)
   {
      FUNC9("Unable to set format on video encoder output port");
      goto error;
   }

   // Set the JPEG quality level
   status = FUNC7(encoder_output, MMAL_PARAMETER_JPEG_Q_FACTOR, state->quality);

   if (status != MMAL_SUCCESS)
   {
      FUNC9("Unable to set JPEG quality");
      goto error;
   }

   // Set the JPEG restart interval
   status = FUNC7(encoder_output, MMAL_PARAMETER_JPEG_RESTART_INTERVAL, state->restart_interval);

   if (state->restart_interval && status != MMAL_SUCCESS)
   {
      FUNC9("Unable to set JPEG restart interval");
      goto error;
   }

   // Set up any required thumbnail
   {
      MMAL_PARAMETER_THUMBNAIL_CONFIG_T param_thumb = {{MMAL_PARAMETER_THUMBNAIL_CONFIGURATION, sizeof(MMAL_PARAMETER_THUMBNAIL_CONFIG_T)}, 0, 0, 0, 0};

      if ( state->thumbnailConfig.enable &&
            state->thumbnailConfig.width > 0 && state->thumbnailConfig.height > 0 )
      {
         // Have a valid thumbnail defined
         param_thumb.enable = 1;
         param_thumb.width = state->thumbnailConfig.width;
         param_thumb.height = state->thumbnailConfig.height;
         param_thumb.quality = state->thumbnailConfig.quality;
      }
      status = FUNC6(encoder->control, &param_thumb.hdr);
   }

   //  Enable component
   status = FUNC3(encoder);

   if (status  != MMAL_SUCCESS)
   {
      FUNC9("Unable to enable video encoder component");
      goto error;
   }

   /* Create pool of buffer headers for the output port to consume */
   pool = FUNC8(encoder_output, encoder_output->buffer_num, encoder_output->buffer_size);

   if (!pool)
   {
      FUNC9("Failed to create buffer header pool for encoder output port %s", encoder_output->name);
   }

   state->encoder_pool = pool;
   state->encoder_component = encoder;

   if (state->common_settings.verbose)
      FUNC0(stderr, "Encoder component done\n");

   return status;

error:

   if (encoder)
      FUNC2(encoder);

   return status;
}