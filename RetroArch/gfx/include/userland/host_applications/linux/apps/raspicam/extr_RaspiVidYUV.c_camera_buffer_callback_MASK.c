#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_28__ {scalar_t__ is_enabled; TYPE_3__* format; scalar_t__ userdata; } ;
struct TYPE_27__ {int abort; scalar_t__ lasttime; int starttime; TYPE_7__* pstate; int /*<<< orphan*/  frame; scalar_t__ pts_file_handle; int /*<<< orphan*/  file_handle; } ;
struct TYPE_24__ {int enable_annotate; char* annotate_string; int /*<<< orphan*/  annotate_y; int /*<<< orphan*/  annotate_x; int /*<<< orphan*/  annotate_justify; int /*<<< orphan*/  annotate_bg_colour; int /*<<< orphan*/  annotate_text_colour; int /*<<< orphan*/  annotate_text_size; } ;
struct TYPE_23__ {scalar_t__ gps; } ;
struct TYPE_26__ {scalar_t__ frame; scalar_t__ starttime; TYPE_6__* camera_pool; TYPE_5__ camera_parameters; int /*<<< orphan*/  camera_component; TYPE_4__ common_settings; scalar_t__ onlyLuma; } ;
struct TYPE_25__ {int /*<<< orphan*/  queue; } ;
struct TYPE_22__ {TYPE_2__* es; } ;
struct TYPE_20__ {int width; int height; } ;
struct TYPE_21__ {TYPE_1__ video; } ;
struct TYPE_19__ {int length; scalar_t__ pts; int /*<<< orphan*/  data; } ;
typedef  TYPE_7__ RASPIVIDYUV_STATE ;
typedef  TYPE_8__ PORT_USERDATA ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_9__ MMAL_PORT_T ;
typedef  TYPE_10__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int ANNOTATE_APP_TEXT ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ MMAL_TIME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 scalar_t__ FUNC7 (TYPE_9__*,TYPE_10__*) ; 
 TYPE_10__* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (int,int) ; 

__attribute__((used)) static void FUNC14(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_BUFFER_HEADER_T *new_buffer;
   static int64_t last_second = -1;

   // We pass our file handle and other stuff in via the userdata field.

   PORT_USERDATA *pData = (PORT_USERDATA *)port->userdata;
   RASPIVIDYUV_STATE *pstate = pData->pstate;

   if (pData)
   {
      int bytes_written = 0;
      int bytes_to_write = buffer->length;
      int64_t current_time = FUNC3()/1000000;

      if (pstate->onlyLuma)
         bytes_to_write = FUNC13(buffer->length, port->format->es->video.width * port->format->es->video.height);

      FUNC11(pData->file_handle);

      if (bytes_to_write)
      {
         FUNC4(buffer);
         bytes_written = FUNC2(buffer->data, 1, bytes_to_write, pData->file_handle);
         FUNC5(buffer);

         if (bytes_written != bytes_to_write)
         {
            FUNC12("Failed to write buffer data (%d from %d)- aborting", bytes_written, bytes_to_write);
            pData->abort = 1;
         }
         if (pData->pts_file_handle)
         {
            // Every buffer should be a complete frame, so no need to worry about
            // fragments or duplicated timestamps. We're also in RESET_STC mode, so
            // the time on frame 0 should always be 0 anyway, but simply copy the
            // code from raspivid.
            // MMAL_TIME_UNKNOWN should never happen, but it'll corrupt the timestamps
            // file if saved.
            if(buffer->pts != MMAL_TIME_UNKNOWN)
            {
               int64_t pts;
               if(pstate->frame==0)
                  pstate->starttime=buffer->pts;
               pData->lasttime=buffer->pts;
               pts = buffer->pts - pData->starttime;
               FUNC0(pData->pts_file_handle,"%d.%03d\n", pts/1000, pts%1000);
               pData->frame++;
            }
         }
      }

      // See if the second count has changed and we need to update any annotation
      if (current_time != last_second)
      {
         if ((pstate->camera_parameters.enable_annotate & ANNOTATE_APP_TEXT) && pstate->common_settings.gps)
         {
            char *text = FUNC9();
            FUNC10(pstate->camera_component, pstate->camera_parameters.enable_annotate,
                                         text,
                                         pstate->camera_parameters.annotate_text_size,
                                         pstate->camera_parameters.annotate_text_colour,
                                         pstate->camera_parameters.annotate_bg_colour,
                                         pstate->camera_parameters.annotate_justify,
                                         pstate->camera_parameters.annotate_x,
                                         pstate->camera_parameters.annotate_y
                                        );
            FUNC1(text);
         }
         else
            FUNC10(pstate->camera_component, pstate->camera_parameters.enable_annotate,
                                         pstate->camera_parameters.annotate_string,
                                         pstate->camera_parameters.annotate_text_size,
                                         pstate->camera_parameters.annotate_text_colour,
                                         pstate->camera_parameters.annotate_bg_colour,
                                         pstate->camera_parameters.annotate_justify,
                                         pstate->camera_parameters.annotate_x,
                                         pstate->camera_parameters.annotate_y
                                        );
         last_second = current_time;
      }

   }
   else
   {
      FUNC12("Received a camera buffer callback with no state");
   }

   // release buffer back to the pool
   FUNC6(buffer);

   // and send one back to the port (if still open)
   if (port->is_enabled)
   {
      MMAL_STATUS_T status;

      new_buffer = FUNC8(pData->pstate->camera_pool->queue);

      if (new_buffer)
         status = FUNC7(port, new_buffer);

      if (!new_buffer || status != MMAL_SUCCESS)
         FUNC12("Unable to return a buffer to the camera port");
   }
}