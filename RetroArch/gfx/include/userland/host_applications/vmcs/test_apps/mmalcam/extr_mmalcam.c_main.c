
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VCOS_THREAD_ATTR_T ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_3__ {int zero_copy; scalar_t__ init_result; int init_sem; int encoder_stats; scalar_t__ uri; int render_stats; int camera_num; int focus_test; int bit_rate; int vformat; int layer; } ;


 int DEFAULT_BIT_RATE ;
 int DEFAULT_CAM_NUM ;
 int DEFAULT_VIDEO_FORMAT ;
 int LOG_ERROR (char*,...) ;
 int LOG_TRACE (char*) ;
 scalar_t__ MMALCAM_INIT_SUCCESS ;
 int MMAL_PARAM_FOCUS_MAX ;
 int SIGINT ;
 int VCOS_LOG_CATEGORY ;
 scalar_t__ VCOS_SUCCESS ;
 int VIEWFINDER_LAYER ;
 TYPE_1__ camcorder_behaviour ;
 int camcorder_thread ;
 int printf (char*) ;
 int signal (int ,int ) ;
 int sleep (scalar_t__) ;
 scalar_t__ sleepy_time ;
 int stop ;
 int test_mmal_camcorder ;
 int test_mmalcam_dump_stats (char*,int *) ;
 scalar_t__ test_parse_cmdline (int,char const**) ;
 int test_signal_handler ;
 int vcos_assert (int) ;
 int vcos_log_register (char*,int ) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int ) ;
 int vcos_semaphore_delete (int *) ;
 int vcos_semaphore_wait (int *) ;
 int vcos_thread_attr_init (int *) ;
 scalar_t__ vcos_thread_create (int *,char*,int *,int ,TYPE_1__*) ;
 int vcos_thread_join (int *,int *) ;

int main(int argc, const char **argv)
{
   VCOS_THREAD_ATTR_T attrs;
   VCOS_STATUS_T status;
   int result = 0;

   vcos_log_register("mmalcam", VCOS_LOG_CATEGORY);
   printf("MMAL Camera Test App\n");
   signal(SIGINT, test_signal_handler);

   camcorder_behaviour.layer = VIEWFINDER_LAYER;
   camcorder_behaviour.vformat = DEFAULT_VIDEO_FORMAT;
   camcorder_behaviour.zero_copy = 1;
   camcorder_behaviour.bit_rate = DEFAULT_BIT_RATE;
   camcorder_behaviour.focus_test = MMAL_PARAM_FOCUS_MAX;
   camcorder_behaviour.camera_num = DEFAULT_CAM_NUM;

   if(test_parse_cmdline(argc, argv))
   {
      result = -1;
      goto error;
   }

   status = vcos_semaphore_create(&camcorder_behaviour.init_sem, "mmalcam-init", 0);
   vcos_assert(status == VCOS_SUCCESS);

   vcos_thread_attr_init(&attrs);
   if (vcos_thread_create(&camcorder_thread, "mmal camcorder", &attrs, test_mmal_camcorder, &camcorder_behaviour) != VCOS_SUCCESS)
   {
      LOG_ERROR("Thread creation failure");
      result = -2;
      goto error;
   }

   vcos_semaphore_wait(&camcorder_behaviour.init_sem);
   if (camcorder_behaviour.init_result != MMALCAM_INIT_SUCCESS)
   {
      LOG_ERROR("Initialisation failed: %d", camcorder_behaviour.init_result);
      result = (int)camcorder_behaviour.init_result;
      goto error;
   }

   if (sleepy_time != 0)
   {
      sleep(sleepy_time);
      stop = 1;
   }

error:
   LOG_TRACE("Waiting for camcorder thread to terminate");
   vcos_thread_join(&camcorder_thread, ((void*)0));

   test_mmalcam_dump_stats("Render", &camcorder_behaviour.render_stats);
   if (camcorder_behaviour.uri)
      test_mmalcam_dump_stats("Encoder", &camcorder_behaviour.encoder_stats);

   vcos_semaphore_delete(&camcorder_behaviour.init_sem);
   return result;
}
