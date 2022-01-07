
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ num_swaps; int stop_reason; int sem_drawn; scalar_t__ video_frame; int sem_decoded; int opts; } ;
typedef TYPE_1__ VIDTEX_T ;
struct TYPE_15__ {char* uri; int duration_ms; int opts; } ;
typedef TYPE_2__ VIDTEX_PARAMS_T ;
struct TYPE_18__ {int stop_cb; int video_frame_cb; TYPE_1__* ctx; } ;
struct TYPE_17__ {int duration_ms; } ;
struct TYPE_16__ {scalar_t__ video_frame_count; } ;
typedef int SVP_T ;
typedef TYPE_3__ SVP_STATS_T ;
typedef TYPE_4__ SVP_OPTS_T ;
typedef TYPE_5__ SVP_CALLBACKS_T ;


 int SVP_STOP_ERROR ;
 scalar_t__ VT_MAX_FRAME_DISPARITY ;
 scalar_t__ abs (int) ;
 int * svp_create (char const*,TYPE_5__*,TYPE_4__*) ;
 int svp_destroy (int *) ;
 int svp_get_stats (int *,TYPE_3__*) ;
 scalar_t__ svp_start (int *) ;
 int vcos_log_error (char*,...) ;
 int vcos_log_info (char*,scalar_t__) ;
 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;
 int vidtex_draw (TYPE_1__*,scalar_t__) ;
 int vidtex_flush_gl (TYPE_1__*) ;
 int vidtex_set_quit (TYPE_1__*,int) ;
 int vidtex_stop_cb ;
 int vidtex_video_frame_cb ;

__attribute__((used)) static int vidtex_play(VIDTEX_T *vt, const VIDTEX_PARAMS_T *params)
{
   const char *uri;
   SVP_CALLBACKS_T callbacks;
   SVP_T *svp;
   SVP_OPTS_T opts;
   SVP_STATS_T stats;
   int rv = -1;

   uri = (params->uri[0] == '\0') ? ((void*)0) : params->uri;
   vt->opts = params->opts;
   callbacks.ctx = vt;
   callbacks.video_frame_cb = vidtex_video_frame_cb;
   callbacks.stop_cb = vidtex_stop_cb;
   opts.duration_ms = params->duration_ms;

   svp = svp_create(uri, &callbacks, &opts);
   if (svp)
   {

      vt->num_swaps = 0;


      if (svp_start(svp) == 0)
      {
         while (!vidtex_set_quit(vt, 0))
         {
            vcos_semaphore_wait(&vt->sem_decoded);

            if (vt->video_frame)
            {
               vidtex_draw(vt, vt->video_frame);
               vcos_semaphore_post(&vt->sem_drawn);
            }
         }

         vcos_semaphore_post(&vt->sem_drawn);


         svp_get_stats(svp, &stats);
         vcos_log_info("video frames decoded: %6u", stats.video_frame_count);
         vcos_log_info("EGL buffer swaps:     %6u", vt->num_swaps);


         if (vt->stop_reason & SVP_STOP_ERROR)
         {
            vcos_log_error("vidtex exiting on error");
         }
         else if (vt->num_swaps == 0)
         {
            vcos_log_error("vidtex completed with no EGL buffer swaps");
         }
         else if (abs((int)vt->num_swaps - (int)stats.video_frame_count) > VT_MAX_FRAME_DISPARITY)
         {
            vcos_log_error("vidtex completed with %u EGL buffer swaps, but %u video frames",
                           vt->num_swaps, (int)stats.video_frame_count);
         }
         else
         {
            rv = 0;
         }
      }

      svp_destroy(svp);
   }

   vidtex_flush_gl(vt);

   return rv;
}
