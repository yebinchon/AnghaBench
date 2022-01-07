
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_39__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_13__ ;


typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VCOS_UNSIGNED ;
struct TYPE_43__ {int hdr; } ;
struct TYPE_47__ {scalar_t__ init_result; char* uri; int seconds_per_change; int change; int init_sem; TYPE_39__ encoder_stats; TYPE_39__ render_stats; int focus_test; int tunneling; int zero_copy; } ;
struct TYPE_46__ {int length; int data; } ;
struct TYPE_45__ {TYPE_2__** output; TYPE_2__** input; } ;
struct TYPE_41__ {int member_1; int member_0; } ;
struct TYPE_44__ {int member_1; int hdr; TYPE_1__ member_0; } ;
struct TYPE_42__ {TYPE_13__* format; } ;
struct TYPE_40__ {scalar_t__ encoding; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;
typedef TYPE_3__ MMAL_PARAMETER_BOOLEAN_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;
typedef TYPE_5__ MMAL_BUFFER_HEADER_T ;
typedef TYPE_6__ MMALCAM_BEHAVIOUR_T ;
typedef int FILE ;


 int INIT_PARAMETER (TYPE_39__,int ) ;
 int LOG_ERROR (char*,int,...) ;
 int MAX_PACKET_COUNT ;
 scalar_t__ MMALCAM_INIT_ERROR_CAMERA ;
 scalar_t__ MMALCAM_INIT_ERROR_CAMERA_CAPTURE ;
 scalar_t__ MMALCAM_INIT_ERROR_ENCODER ;
 scalar_t__ MMALCAM_INIT_ERROR_ENCODER_IN ;
 scalar_t__ MMALCAM_INIT_ERROR_ENCODER_OUT ;
 scalar_t__ MMALCAM_INIT_ERROR_EVENT_FLAGS ;
 scalar_t__ MMALCAM_INIT_ERROR_RENDER ;
 scalar_t__ MMALCAM_INIT_ERROR_VIEWFINDER ;
 scalar_t__ MMALCAM_INIT_SUCCESS ;
 int MMAL_CAM_ANY_EVENT ;
 int MMAL_CAM_AUTOFOCUS_COMPLETE ;
 scalar_t__ MMAL_ENCODING_JPEG ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_PARAMETER_BRIGHTNESS ;
 int MMAL_PARAMETER_CAPTURE ;
 int MMAL_PARAMETER_CONTRAST ;
 int MMAL_PARAMETER_SATURATION ;
 int MMAL_PARAMETER_SHARPNESS ;
 int MMAL_PARAMETER_STATISTICS ;
 int MMAL_PARAM_FOCUS_MAX ;
 scalar_t__ MMAL_SUCCESS ;
 int VCOS_OR_CONSUME ;
 scalar_t__ VCOS_SUCCESS ;
 int VCOS_TICKS_TO_MS (int) ;
 scalar_t__ connect_ports (TYPE_2__*,TYPE_2__*,int **,int **) ;
 int disable_port (TYPE_2__*) ;
 int events ;
 int fclose (int *) ;
 scalar_t__ fill_port_from_pool (TYPE_2__*,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fwrite (int ,int,int ,int *) ;
 int mmal_buffer_header_mem_lock (TYPE_5__*) ;
 int mmal_buffer_header_mem_unlock (TYPE_5__*) ;
 int mmal_buffer_header_release (TYPE_5__*) ;
 int mmal_component_destroy (TYPE_4__*) ;
 int mmal_component_disable (TYPE_4__*) ;
 int mmal_port_parameter_get (TYPE_2__*,int *) ;
 scalar_t__ mmal_port_parameter_set (TYPE_2__*,int *) ;
 int mmal_port_pool_destroy (TYPE_2__*,int *) ;
 int mmal_queue_destroy (int *) ;
 TYPE_5__* mmal_queue_get (int *) ;
 int mmalcam_next_colour_param (TYPE_4__*,int ,int,int,char*) ;
 int mmalcam_next_drc (TYPE_4__*) ;
 int mmalcam_next_effect (TYPE_4__*) ;
 int mmalcam_next_focus (TYPE_4__*) ;
 int mmalcam_next_hdr (TYPE_4__*) ;
 int mmalcam_next_rotation (TYPE_4__*) ;
 int mmalcam_next_zoom (TYPE_4__*) ;
 int mmalcam_reset_focus (TYPE_4__*,int ) ;
 int printf (char*,int) ;
 scalar_t__ send_buffer_from_queue (TYPE_2__*,int *) ;
 scalar_t__ setup_output_port (TYPE_2__*,int **,int **) ;
 int stderr ;
 TYPE_4__* test_camera_create (TYPE_6__*,scalar_t__*) ;
 int * test_container_open (char*,TYPE_13__*,scalar_t__*) ;
 int test_container_write (int *,TYPE_5__*) ;
 TYPE_4__* test_video_encoder_create (TYPE_6__*,scalar_t__*) ;
 TYPE_4__* test_video_render_create (TYPE_6__*,scalar_t__*) ;
 int tunneling ;
 int vc_container_close (int *) ;
 scalar_t__ vcos_event_flags_create (int *,char*) ;
 int vcos_event_flags_delete (int *) ;
 int vcos_event_flags_get (int *,int ,int ,int ,int*) ;
 int vcos_get_ms () ;
 int vcos_semaphore_post (int *) ;
 int zero_copy ;

int test_mmal_start_camcorder(volatile int *stop, MMALCAM_BEHAVIOUR_T *behaviour)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_POOL_T *pool_viewfinder = 0, *pool_encoder_in = 0, *pool_encoder_out = 0;
   MMAL_QUEUE_T *queue_viewfinder = 0, *queue_encoder_in = 0, *queue_encoder_out = 0;
   MMAL_COMPONENT_T *camera = 0, *encoder = 0, *render = 0;
   MMAL_PORT_T *viewfinder_port = 0, *video_port = 0, *still_port = 0;
   MMAL_PORT_T *render_port = 0, *encoder_input = 0, *encoder_output = 0;
   uint32_t ms_per_change, last_change_ms, set_focus_delay_ms;
   int packet_count = 0;



   FILE *output = ((void*)0);

   if(vcos_event_flags_create(&events, "MMALCam") != VCOS_SUCCESS)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_EVENT_FLAGS;
      goto error;
   }

   zero_copy = behaviour->zero_copy;
   tunneling = behaviour->tunneling;


   camera = test_camera_create(behaviour, &status);
   if(!camera)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_CAMERA;
      goto error;
   }
   viewfinder_port = camera->output[0];
   video_port = camera->output[1];
   still_port = camera->output[2];


   render = test_video_render_create(behaviour, &status);
   if(!render)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_RENDER;
      goto error;
   }
   render_port = render->input[0];

   status = connect_ports(viewfinder_port, render_port, &queue_viewfinder, &pool_viewfinder);
   if (status != MMAL_SUCCESS)
   {
      behaviour->init_result = MMALCAM_INIT_ERROR_VIEWFINDER;
      goto error;
   }

   if (behaviour->uri)
   {
      MMAL_PARAMETER_BOOLEAN_T camera_capture =
            {{MMAL_PARAMETER_CAPTURE, sizeof(MMAL_PARAMETER_BOOLEAN_T)}, 1};


      encoder = test_video_encoder_create(behaviour, &status);
      if(!encoder)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_ENCODER;
         goto error;
      }
      encoder_input = encoder->input[0];
      encoder_output = encoder->output[0];

      if (encoder_output->format->encoding == MMAL_ENCODING_JPEG)
         video_port = still_port;

      status = connect_ports(video_port, encoder_input, &queue_encoder_in, &pool_encoder_in);
      if (status != MMAL_SUCCESS)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_ENCODER_IN;
         goto error;
      }

      status = setup_output_port(encoder_output, &queue_encoder_out, &pool_encoder_out);
      if (status != MMAL_SUCCESS)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_ENCODER_OUT;
         goto error;
      }

      status = mmal_port_parameter_set(video_port, &camera_capture.hdr);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         behaviour->init_result = MMALCAM_INIT_ERROR_CAMERA_CAPTURE;
         goto error;
      }
      output = fopen(behaviour->uri, "wb");
      if(!output)
      {

         fprintf(stderr, "Error opening output file: %s\n", behaviour->uri);
      }

   }


   behaviour->init_result = MMALCAM_INIT_SUCCESS;
   vcos_semaphore_post(&behaviour->init_sem);

   ms_per_change = behaviour->seconds_per_change * 1000;
   last_change_ms = vcos_get_ms();
   set_focus_delay_ms = 1000;

   while(1)
   {
      MMAL_BUFFER_HEADER_T *buffer;
      VCOS_UNSIGNED set;

      vcos_event_flags_get(&events, MMAL_CAM_ANY_EVENT, VCOS_OR_CONSUME, VCOS_TICKS_TO_MS(2), &set);
      if(*stop) break;

      if (behaviour->focus_test != MMAL_PARAM_FOCUS_MAX)
      {
         if (set & MMAL_CAM_AUTOFOCUS_COMPLETE ||
               (set_focus_delay_ms && (vcos_get_ms() - last_change_ms) >= set_focus_delay_ms))
         {
            set_focus_delay_ms = 0;
            mmalcam_reset_focus(camera, behaviour->focus_test);
         }
      }


      status = fill_port_from_pool(viewfinder_port, pool_viewfinder);
      if (status != MMAL_SUCCESS)
         break;
      status = fill_port_from_pool(video_port, pool_encoder_in);
      if (status != MMAL_SUCCESS)
         break;
      status = fill_port_from_pool(encoder_output, pool_encoder_out);
      if (status != MMAL_SUCCESS)
         break;


      status = send_buffer_from_queue(render_port, queue_viewfinder);
      if (status != MMAL_SUCCESS)
         break;
      status = send_buffer_from_queue(encoder_input, queue_encoder_in);
      if (status != MMAL_SUCCESS)
         break;


      if (queue_encoder_out)
      {
         buffer = mmal_queue_get(queue_encoder_out);
         if (buffer)
         {
            if (output



                )
            {
               mmal_buffer_header_mem_lock(buffer);



               LOG_ERROR("Write %d bytes of data from %p", buffer->length, buffer->data);
               fwrite(buffer->data, 1, buffer->length, output);

               mmal_buffer_header_mem_unlock(buffer);
               packet_count++;
               if (packet_count > MAX_PACKET_COUNT)
               {




                  fclose(output);

                  output = ((void*)0);
                  fprintf(stderr, "All packets written\n");
               }
            }
            mmal_buffer_header_release(buffer);
         }
      }


      if (ms_per_change != 0)
      {
         if((vcos_get_ms() - last_change_ms) >= ms_per_change)
         {
            last_change_ms = vcos_get_ms();
            switch (behaviour->change)
            {
               case 132:
                  if (!mmalcam_next_effect(camera))
                     *stop = 1;
                  break;
               case 131:
                  if (!mmalcam_next_rotation(camera))
                     *stop = 1;
                  break;
               case 128:
                  if (!mmalcam_next_zoom(camera))
                     *stop = 1;
                  break;
               case 134:
                  if (!mmalcam_next_focus(camera))
                     *stop = 1;
                  break;
               case 135:
                  if (!mmalcam_next_drc(camera))
                     *stop = 1;
                  break;
               case 133:
                  if (!mmalcam_next_hdr(camera))
                     *stop = 1;
                  break;
               case 136:
                  if (!mmalcam_next_colour_param(camera, MMAL_PARAMETER_CONTRAST, -100, 100, "contrast"))
                     *stop = 1;
                  break;
               case 137:
                  if (!mmalcam_next_colour_param(camera, MMAL_PARAMETER_BRIGHTNESS, 0, 100, "brightness"))
                     *stop = 1;
                  break;
               case 130:
                  if (!mmalcam_next_colour_param(camera, MMAL_PARAMETER_SATURATION, -100, 100, "saturation"))
                     *stop = 1;
                  break;
               case 129:
                  if (!mmalcam_next_colour_param(camera, MMAL_PARAMETER_SHARPNESS, -100, 100, "sharpness"))
                     *stop = 1;
                  break;
               default:
                  LOG_ERROR("Unexpected change behaviour: %d", behaviour->change);
                  break;
            }
         }
      }
   }


   disable_port(viewfinder_port);
   disable_port(render_port);
   disable_port(video_port);
   disable_port(encoder_input);
   disable_port(encoder_output);


   mmal_component_disable(render);
   if (encoder)
      mmal_component_disable(encoder);
   mmal_component_disable(camera);

   INIT_PARAMETER(behaviour->render_stats, MMAL_PARAMETER_STATISTICS);
   mmal_port_parameter_get(render_port, &behaviour->render_stats.hdr);
   if (encoder)
   {
      INIT_PARAMETER(behaviour->encoder_stats, MMAL_PARAMETER_STATISTICS);
      mmal_port_parameter_get(encoder_output, &behaviour->encoder_stats.hdr);
   }

 error:

   if(pool_viewfinder)
      mmal_port_pool_destroy(viewfinder_port, pool_viewfinder);
   if(pool_encoder_in)
      mmal_port_pool_destroy(video_port, pool_encoder_in);
   if(pool_encoder_out)
      mmal_port_pool_destroy(encoder_output, pool_encoder_out);

   if(render)
      mmal_component_destroy(render);
   if(encoder)
      mmal_component_destroy(encoder);
   if(camera)
      mmal_component_destroy(camera);

   if(queue_viewfinder)
      mmal_queue_destroy(queue_viewfinder);
   if(queue_encoder_in)
      mmal_queue_destroy(queue_encoder_in);
   if(queue_encoder_out)
      mmal_queue_destroy(queue_encoder_out);





   if(output)
      fclose(output);

   vcos_event_flags_delete(&events);

   if (packet_count)
      printf("Packet count: %d\n", packet_count);

   if (behaviour->init_result != MMALCAM_INIT_SUCCESS)
      vcos_semaphore_post(&behaviour->init_sem);

   return (int)status;
}
