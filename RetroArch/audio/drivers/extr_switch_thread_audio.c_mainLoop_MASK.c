#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {int running; int /*<<< orphan*/  cond; int /*<<< orphan*/  fifoLock; int /*<<< orphan*/  fifo; int /*<<< orphan*/  output; int /*<<< orphan*/  event; TYPE_1__ thread; } ;
typedef  TYPE_2__ switch_thread_audio_t ;
struct TYPE_10__ {size_t data_size; size_t buffer_size; scalar_t__ sample_data; scalar_t__ buffer; } ;
typedef  TYPE_3__ compat_audio_out_buffer ;
typedef  scalar_t__ Result ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  U64_MAX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 scalar_t__ FUNC4 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC15(void* data)
{
   Result rc;
   uint32_t released_out_count                  = 0;
   compat_audio_out_buffer *released_out_buffer = NULL;
   switch_thread_audio_t                  *swa  = (switch_thread_audio_t*)data;

   if (!swa)
      return;

   FUNC1("[Audio]: start mainLoop cpu %u tid %u\n", FUNC10(), swa->thread.handle);

   while (swa->running)
   {
      size_t buf_avail, avail, to_write;

      if (!released_out_buffer)
      {
#ifdef HAVE_LIBNX
         rc = audoutWaitPlayFinish(&released_out_buffer, &released_out_count, U64_MAX);
#else
         uint32_t handle_idx = 0;
         FUNC13(&handle_idx, &swa->event, 1, 33333333);
         FUNC11(swa->event);

         rc = FUNC3(&swa->output, &released_out_count, &released_out_buffer);
#endif
         if (FUNC2(rc))
         {
            swa->running = false;
            FUNC1("[Audio]: audoutGetReleasedAudioOutBuffer failed: %d\n", (int)rc);
            break;
         }
         released_out_buffer->data_size = 0;
      }

      buf_avail = released_out_buffer->buffer_size - released_out_buffer->data_size;

      FUNC6(&swa->fifoLock);

      avail    = FUNC9(swa->fifo);
      to_write = FUNC0(avail, buf_avail);
      if (to_write > 0)
      {
	      uint8_t *base;
#ifdef HAVE_LIBNX
	      base = (uint8_t*) released_out_buffer->buffer;
#else
	      base = (uint8_t*) released_out_buffer->sample_data;
#endif
         FUNC8(swa->fifo, base + released_out_buffer->data_size, to_write);
      }

      FUNC7(&swa->fifoLock);
      FUNC5(&swa->cond);

      released_out_buffer->data_size += to_write;
      if (released_out_buffer->data_size >= released_out_buffer->buffer_size / 2)
      {
         rc = FUNC14(swa, released_out_buffer);
         if (FUNC2(rc))
         {
            FUNC1("[Audio]: audoutAppendAudioOutBuffer failed: %d\n", (int)rc);
         }
         released_out_buffer = NULL;
      }
      else
         FUNC12(16000000); /* 16ms */
   }
}