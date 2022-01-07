
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_10__ {int completed_sem; int start_sem; } ;
struct TYPE_11__ {int scene_id; TYPE_1__ capture; scalar_t__ verbose; } ;
typedef TYPE_2__ RASPITEX_STATE ;
 int VCOS_FUNCTION ;
 int VCOS_LOG_CATEGORY ;
 int VCOS_LOG_INFO ;
 int VCOS_LOG_WARN ;
 scalar_t__ VCOS_SUCCESS ;
 int mirror_open (TYPE_2__*) ;
 int sobel_open (TYPE_2__*) ;
 int square_open (TYPE_2__*) ;
 int teapot_open (TYPE_2__*) ;
 int vcos_init () ;
 int vcos_log_error (char*,int ) ;
 int vcos_log_register (char*,int ) ;
 int vcos_log_set_level (int ,int ) ;
 int vcos_log_trace (char*,int ) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int) ;
 int vcsm_square_open (TYPE_2__*) ;
 int yuv_open (TYPE_2__*) ;

int raspitex_init(RASPITEX_STATE *state)
{
   VCOS_STATUS_T status;
   int rc;
   vcos_init();

   vcos_log_register("RaspiTex", VCOS_LOG_CATEGORY);
   vcos_log_set_level(VCOS_LOG_CATEGORY,
                      state->verbose ? VCOS_LOG_INFO : VCOS_LOG_WARN);
   vcos_log_trace("%s", VCOS_FUNCTION);

   status = vcos_semaphore_create(&state->capture.start_sem,
                                  "glcap_start_sem", 1);
   if (status != VCOS_SUCCESS)
      goto error;

   status = vcos_semaphore_create(&state->capture.completed_sem,
                                  "glcap_completed_sem", 0);
   if (status != VCOS_SUCCESS)
      goto error;

   switch (state->scene_id)
   {
   case 131:
      rc = square_open(state);
      break;
   case 133:
      rc = mirror_open(state);
      break;
   case 130:
      rc = teapot_open(state);
      break;
   case 128:
      rc = yuv_open(state);
      break;
   case 132:
      rc = sobel_open(state);
      break;
   case 129:
      rc = vcsm_square_open(state);
      break;
   default:
      rc = -1;
      break;
   }
   if (rc != 0)
      goto error;

   return 0;

error:
   vcos_log_error("%s: failed", VCOS_FUNCTION);
   return -1;
}
