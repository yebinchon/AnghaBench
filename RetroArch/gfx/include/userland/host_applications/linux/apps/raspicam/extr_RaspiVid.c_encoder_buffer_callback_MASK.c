#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_16__ {char* filename; } ;
struct TYPE_21__ {int segmentSize; int segmentNumber; int segmentWrap; char* imv_filename; char* pts_filename; scalar_t__ lasttime; scalar_t__ frame; scalar_t__ starttime; TYPE_2__* encoder_pool; scalar_t__ save_pts; scalar_t__ inlineMotionVectors; TYPE_1__ common_settings; scalar_t__ splitNow; scalar_t__ splitWait; } ;
struct TYPE_20__ {int length; int flags; scalar_t__ pts; scalar_t__ data; } ;
struct TYPE_19__ {scalar_t__ is_enabled; scalar_t__ userdata; } ;
struct TYPE_18__ {int* cb_buff; int cb_len; int cb_wptr; int header_wptr; int* header_bytes; int* iframe_buff; size_t iframe_buff_wpos; int iframe_buff_rpos; int cb_wrap; int abort; TYPE_6__* pstate; int /*<<< orphan*/ * pts_file_handle; int /*<<< orphan*/ * file_handle; scalar_t__ flush_buffers; int /*<<< orphan*/ * imv_file_handle; } ;
struct TYPE_17__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_3__ PORT_USERDATA ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_PORT_T ;
typedef  TYPE_5__ MMAL_BUFFER_HEADER_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int IFRAME_BUFSIZE ; 
 int MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO ; 
 int MMAL_BUFFER_HEADER_FLAG_CONFIG ; 
 int MMAL_BUFFER_HEADER_FLAG_FRAME_END ; 
 int MMAL_BUFFER_HEADER_FLAG_KEYFRAME ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ MMAL_TIME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_5__*) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static void FUNC15(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_BUFFER_HEADER_T *new_buffer;
   static int64_t base_time =  -1;
   static int64_t last_second = -1;

   // All our segment times based on the receipt of the first encoder callback
   if (base_time == -1)
      base_time = FUNC4()/1000;

   // We pass our file handle and other stuff in via the userdata field.

   PORT_USERDATA *pData = (PORT_USERDATA *)port->userdata;

   if (pData)
   {
      int bytes_written = buffer->length;
      int64_t current_time = FUNC4()/1000;

      FUNC13(pData->file_handle);
      if(pData->pstate->inlineMotionVectors) FUNC13(pData->imv_file_handle);

      if (pData->cb_buff)
      {
         int space_in_buff = pData->cb_len - pData->cb_wptr;
         int copy_to_end = space_in_buff > buffer->length ? buffer->length : space_in_buff;
         int copy_to_start = buffer->length - copy_to_end;

         if(buffer->flags & MMAL_BUFFER_HEADER_FLAG_CONFIG)
         {
            if(pData->header_wptr + buffer->length > sizeof(pData->header_bytes))
            {
               FUNC14("Error in header bytes\n");
            }
            else
            {
               // These are the header bytes, save them for final output
               FUNC6(buffer);
               FUNC5(pData->header_bytes + pData->header_wptr, buffer->data, buffer->length);
               FUNC7(buffer);
               pData->header_wptr += buffer->length;
            }
         }
         else if((buffer->flags & MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO))
         {
            // Do something with the inline motion vectors...
         }
         else
         {
            static int frame_start = -1;
            int i;

            if(frame_start == -1)
               frame_start = pData->cb_wptr;

            if(buffer->flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
            {
               pData->iframe_buff[pData->iframe_buff_wpos] = frame_start;
               pData->iframe_buff_wpos = (pData->iframe_buff_wpos + 1) % IFRAME_BUFSIZE;
            }

            if(buffer->flags & MMAL_BUFFER_HEADER_FLAG_FRAME_END)
               frame_start = -1;

            // If we overtake the iframe rptr then move the rptr along
            if((pData->iframe_buff_rpos + 1) % IFRAME_BUFSIZE != pData->iframe_buff_wpos)
            {
               while(
                  (
                     pData->cb_wptr <= pData->iframe_buff[pData->iframe_buff_rpos] &&
                     (pData->cb_wptr + buffer->length) > pData->iframe_buff[pData->iframe_buff_rpos]
                  ) ||
                  (
                     (pData->cb_wptr > pData->iframe_buff[pData->iframe_buff_rpos]) &&
                     (pData->cb_wptr + buffer->length) > (pData->iframe_buff[pData->iframe_buff_rpos] + pData->cb_len)
                  )
               )
                  pData->iframe_buff_rpos = (pData->iframe_buff_rpos + 1) % IFRAME_BUFSIZE;
            }

            FUNC6(buffer);
            // We are pushing data into a circular buffer
            FUNC5(pData->cb_buff + pData->cb_wptr, buffer->data, copy_to_end);
            FUNC5(pData->cb_buff, buffer->data + copy_to_end, copy_to_start);
            FUNC7(buffer);

            if((pData->cb_wptr + buffer->length) > pData->cb_len)
               pData->cb_wrap = 1;

            pData->cb_wptr = (pData->cb_wptr + buffer->length) % pData->cb_len;

            for(i = pData->iframe_buff_rpos; i != pData->iframe_buff_wpos; i = (i + 1) % IFRAME_BUFSIZE)
            {
               int p = pData->iframe_buff[i];
               if(pData->cb_buff[p] != 0 || pData->cb_buff[p+1] != 0 || pData->cb_buff[p+2] != 0 || pData->cb_buff[p+3] != 1)
               {
                  FUNC14("Error in iframe list\n");
               }
            }
         }
      }
      else
      {
         // For segmented record mode, we need to see if we have exceeded our time/size,
         // but also since we have inline headers turned on we need to break when we get one to
         // ensure that the new stream has the header in it. If we break on an I-frame, the
         // SPS/PPS header is actually in the previous chunk.
         if ((buffer->flags & MMAL_BUFFER_HEADER_FLAG_CONFIG) &&
               ((pData->pstate->segmentSize && current_time > base_time + pData->pstate->segmentSize) ||
                (pData->pstate->splitWait && pData->pstate->splitNow)))
         {
            FILE *new_handle;

            base_time = current_time;

            pData->pstate->splitNow = 0;
            pData->pstate->segmentNumber++;

            // Only wrap if we have a wrap point set
            if (pData->pstate->segmentWrap && pData->pstate->segmentNumber > pData->pstate->segmentWrap)
               pData->pstate->segmentNumber = 1;

            if (pData->pstate->common_settings.filename && pData->pstate->common_settings.filename[0] != '-')
            {
               new_handle = FUNC11(pData->pstate, pData->pstate->common_settings.filename);

               if (new_handle)
               {
                  FUNC0(pData->file_handle);
                  pData->file_handle = new_handle;
               }
            }

            if (pData->pstate->imv_filename && pData->pstate->imv_filename[0] != '-')
            {
               new_handle = FUNC11(pData->pstate, pData->pstate->imv_filename);

               if (new_handle)
               {
                  FUNC0(pData->imv_file_handle);
                  pData->imv_file_handle = new_handle;
               }
            }

            if (pData->pstate->pts_filename && pData->pstate->pts_filename[0] != '-')
            {
               new_handle = FUNC11(pData->pstate, pData->pstate->pts_filename);

               if (new_handle)
               {
                  FUNC0(pData->pts_file_handle);
                  pData->pts_file_handle = new_handle;
               }
            }
         }
         if (buffer->length)
         {
            FUNC6(buffer);
            if(buffer->flags & MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO)
            {
               if(pData->pstate->inlineMotionVectors)
               {
                  bytes_written = FUNC3(buffer->data, 1, buffer->length, pData->imv_file_handle);
                  if(pData->flush_buffers) FUNC1(pData->imv_file_handle);
               }
               else
               {
                  //We do not want to save inlineMotionVectors...
                  bytes_written = buffer->length;
               }
            }
            else
            {
               bytes_written = FUNC3(buffer->data, 1, buffer->length, pData->file_handle);
               if(pData->flush_buffers) FUNC1(pData->file_handle);

               if(pData->pstate->save_pts &&
                     (buffer->flags & MMAL_BUFFER_HEADER_FLAG_FRAME_END ||
                      buffer->flags == 0 ||
                      buffer->flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME) &&
                     !(buffer->flags & MMAL_BUFFER_HEADER_FLAG_CONFIG))
               {
                  if(buffer->pts != MMAL_TIME_UNKNOWN && buffer->pts != pData->pstate->lasttime)
                  {
                     int64_t pts;
                     if(pData->pstate->frame==0)pData->pstate->starttime=buffer->pts;
                     pData->pstate->lasttime=buffer->pts;
                     pts = buffer->pts - pData->pstate->starttime;
                     FUNC2(pData->pts_file_handle,"%lld.%03lld\n", pts/1000, pts%1000);
                     pData->pstate->frame++;
                  }
               }
            }

            FUNC7(buffer);

            if (bytes_written != buffer->length)
            {
               FUNC14("Failed to write buffer data (%d from %d)- aborting", bytes_written, buffer->length);
               pData->abort = 1;
            }
         }
      }

      // See if the second count has changed and we need to update any annotation
      if (current_time/1000 != last_second)
      {
         FUNC12(pData->pstate);
         last_second = current_time/1000;
      }
   }
   else
   {
      FUNC14("Received a encoder buffer callback with no state");
   }

   // release buffer back to the pool
   FUNC8(buffer);

   // and send one back to the port (if still open)
   if (port->is_enabled)
   {
      MMAL_STATUS_T status;

      new_buffer = FUNC10(pData->pstate->encoder_pool->queue);

      if (new_buffer)
         status = FUNC9(port, new_buffer);

      if (!new_buffer || status != MMAL_SUCCESS)
         FUNC14("Unable to return a buffer to the encoder port");
   }
}