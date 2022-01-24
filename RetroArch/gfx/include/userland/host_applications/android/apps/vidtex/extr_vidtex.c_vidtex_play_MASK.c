#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ num_swaps; int stop_reason; int /*<<< orphan*/  sem_drawn; scalar_t__ video_frame; int /*<<< orphan*/  sem_decoded; int /*<<< orphan*/  opts; } ;
typedef  TYPE_1__ VIDTEX_T ;
struct TYPE_15__ {char* uri; int /*<<< orphan*/  duration_ms; int /*<<< orphan*/  opts; } ;
typedef  TYPE_2__ VIDTEX_PARAMS_T ;
struct TYPE_18__ {int /*<<< orphan*/  stop_cb; int /*<<< orphan*/  video_frame_cb; TYPE_1__* ctx; } ;
struct TYPE_17__ {int /*<<< orphan*/  duration_ms; } ;
struct TYPE_16__ {scalar_t__ video_frame_count; } ;
typedef  int /*<<< orphan*/  SVP_T ;
typedef  TYPE_3__ SVP_STATS_T ;
typedef  TYPE_4__ SVP_OPTS_T ;
typedef  TYPE_5__ SVP_CALLBACKS_T ;

/* Variables and functions */
 int SVP_STOP_ERROR ; 
 scalar_t__ VT_MAX_FRAME_DISPARITY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  vidtex_stop_cb ; 
 int /*<<< orphan*/  vidtex_video_frame_cb ; 

__attribute__((used)) static int FUNC12(VIDTEX_T *vt, const VIDTEX_PARAMS_T *params)
{
   const char *uri;
   SVP_CALLBACKS_T callbacks;
   SVP_T *svp;
   SVP_OPTS_T opts;
   SVP_STATS_T stats;
   int rv = -1;

   uri = (params->uri[0] == '\0') ? NULL : params->uri;
   vt->opts = params->opts;
   callbacks.ctx = vt;
   callbacks.video_frame_cb = vidtex_video_frame_cb;
   callbacks.stop_cb = vidtex_stop_cb;
   opts.duration_ms = params->duration_ms;

   svp = FUNC1(uri, &callbacks, &opts);
   if (svp)
   {
      /* Reset stats */
      vt->num_swaps = 0;

      /* Run video player until receive quit notification */
      if (FUNC4(svp) == 0)
      {
         while (!FUNC11(vt, false))
         {
            FUNC8(&vt->sem_decoded);

            if (vt->video_frame)
            {
               FUNC9(vt, vt->video_frame);
               FUNC7(&vt->sem_drawn);
            }
         }

         FUNC7(&vt->sem_drawn);

         /* Dump stats */
         FUNC3(svp, &stats);
         FUNC6("video frames decoded: %6u", stats.video_frame_count);
         FUNC6("EGL buffer swaps:     %6u", vt->num_swaps);

         /* Determine status of operation and log errors */
         if (vt->stop_reason & SVP_STOP_ERROR)
         {
            FUNC5("vidtex exiting on error");
         }
         else if (vt->num_swaps == 0)
         {
            FUNC5("vidtex completed with no EGL buffer swaps");
         }
         else if (FUNC0((int)vt->num_swaps - (int)stats.video_frame_count) > VT_MAX_FRAME_DISPARITY)
         {
            FUNC5("vidtex completed with %u EGL buffer swaps, but %u video frames",
                           vt->num_swaps, (int)stats.video_frame_count);
         }
         else
         {
            rv = 0;
         }
      }

      FUNC2(svp);
   }

   FUNC10(vt);

   return rv;
}