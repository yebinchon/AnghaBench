#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int buffer_size; int /*<<< orphan*/  drv; int /*<<< orphan*/  fifo_condvar; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  fifo; scalar_t__ paused; void* mempool; TYPE_2__* wavebufs; scalar_t__ running; } ;
typedef  TYPE_1__ libnx_audren_thread_t ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef  TYPE_2__ AudioDriverWaveBuf ;

/* Variables and functions */
 scalar_t__ AudioDriverWaveBufState_Done ; 
 scalar_t__ AudioDriverWaveBufState_Free ; 
 unsigned int BUFFER_COUNT ; 
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 

__attribute__((used)) static void FUNC13(void* data)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;
   size_t available = 0;
   size_t current_size = 0;
   size_t written_tmp = 0;
   AudioDriverWaveBuf* current_wavebuf = NULL;
   void* current_pool_ptr = NULL;
   void* dstbuf = NULL;
   unsigned i;

   if (!aud)
      return;

   while(aud->running)
   {
      if(!current_wavebuf)
      {
         for (i = 0; i < BUFFER_COUNT; i++)
         {
            if (aud->wavebufs[i].state == AudioDriverWaveBufState_Free
               || aud->wavebufs[i].state == AudioDriverWaveBufState_Done)
            {
               current_wavebuf = &aud->wavebufs[i];
               current_pool_ptr = aud->mempool + (i * aud->buffer_size);
               current_size = 0;
               break;
            }
         }
      }

      if(current_wavebuf)
      {
         FUNC10(&aud->fifo_lock);
         available = aud->paused ? 0 : FUNC9(aud->fifo);
         written_tmp = FUNC0(available, aud->buffer_size - current_size);
         dstbuf = current_pool_ptr + current_size;
         if(written_tmp > 0)
         {
            FUNC8(aud->fifo, dstbuf, written_tmp);
         }
         FUNC11(&aud->fifo_lock);

         if(written_tmp > 0)
         {
            FUNC7(&aud->fifo_condvar);

            current_size += written_tmp;
            FUNC1(dstbuf, written_tmp);
         }

         if(current_size == aud->buffer_size)
         {
            FUNC4(&aud->drv, 0, current_wavebuf);

            FUNC3(&aud->drv);
            if (!FUNC5(&aud->drv, 0))
            {
               FUNC6(&aud->drv, 0);
            }

            current_wavebuf = NULL;
         }

         FUNC12(1000UL);
      }
      else
      {
         FUNC3(&aud->drv);
         FUNC2();
      }
   }
}