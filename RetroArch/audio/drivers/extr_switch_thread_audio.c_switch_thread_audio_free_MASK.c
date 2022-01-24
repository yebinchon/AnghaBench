#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int running; TYPE_4__* buffers; int /*<<< orphan*/ * fifo; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ switch_thread_audio_t ;
struct TYPE_6__ {int /*<<< orphan*/  sample_data; TYPE_1__* buffer; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(void *data)
{
   unsigned i;
   switch_thread_audio_t *swa = (switch_thread_audio_t *)data;

   if (!swa)
         return;

   if (swa->running)
   {
         swa->running = false;
         FUNC2(&swa->thread);
         FUNC1(&swa->thread);
   }

   FUNC7(swa);
   FUNC6();

   if (swa->fifo)
   {
         FUNC3(swa->fifo);
         swa->fifo = NULL;
   }

   for (i = 0; i < FUNC0(swa->buffers); i++)
   {
#ifdef HAVE_LIBNX
         free(swa->buffers[i].buffer);
#else
         FUNC5(swa->buffers[i].sample_data);
#endif
   }

   FUNC4(swa);
   swa = NULL;
}