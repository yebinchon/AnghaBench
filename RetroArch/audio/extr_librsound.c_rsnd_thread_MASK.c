#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  cond_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  thread; } ;
struct TYPE_9__ {int chunk_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  socket; } ;
struct TYPE_11__ {int conn_type; int total_written; int channels; int rate; int samplesize; int has_written; TYPE_3__ thread; scalar_t__ thread_active; int /*<<< orphan*/  start_time; TYPE_2__ backend_info; TYPE_1__ conn; int /*<<< orphan*/  fifo_buffer; } ;
typedef  TYPE_4__ rsound_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int RSD_CONN_PROTO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14 ( void * thread_data )
{
   /* We share data between thread and callable functions */
   rsound_t *rd = thread_data;
   int rc;
   char buffer[rd->backend_info.chunk_size];

   /* Plays back data as long as there is data in the buffer. Else, sleep until it can. */
   /* Two (;;) for loops! :3 Beware! */
   for (;;)
   {
      for(;;)
      {
         FUNC1();

         // We ask the server to send its latest backend data. Do not really care about errors atm.
         // We only bother to check after 1 sec of audio has been played, as it might be quite inaccurate in the start of the stream.
         if ( (rd->conn_type & RSD_CONN_PROTO) && (rd->total_written > rd->channels * rd->rate * rd->samplesize) )
         {
            FUNC7(rd);
            FUNC8(rd);
         }

         /* If the buffer is empty or we've stopped the stream, jump out of this for loop */
         FUNC11(rd->thread.mutex);
         if ( FUNC3(rd->fifo_buffer) < rd->backend_info.chunk_size || !rd->thread_active )
         {
            FUNC12(rd->thread.mutex);
            break;
         }
         FUNC12(rd->thread.mutex);

         FUNC1();
         FUNC11(rd->thread.mutex);
         FUNC2(rd->fifo_buffer, buffer, sizeof(buffer));
         FUNC12(rd->thread.mutex);
         rc = FUNC6(rd->conn.socket, buffer, sizeof(buffer), 1);

         /* If this happens, we should make sure that subsequent and current calls to rsd_write() will fail. */
         if ( rc != (int)rd->backend_info.chunk_size )
         {
            FUNC1();
            FUNC5(rd);

            /* Wakes up a potentially sleeping fill_buffer() */
            FUNC9(rd->thread.cond);

            /* This thread will not be joined, so detach. */
            FUNC13(rd->thread.thread);
            return;
         }

         /* If this was the first write, set the start point for the timer. */
         if ( !rd->has_written )
         {
            FUNC11(rd->thread.mutex);
            rd->start_time = FUNC4();
            rd->has_written = 1;
            FUNC12(rd->thread.mutex);
         }

         /* Increase the total_written counter. Used in rsnd_drain() */
         FUNC11(rd->thread.mutex);
         rd->total_written += rc;
         FUNC12(rd->thread.mutex);

         /* Buffer has decreased, signal fill_buffer() */
         FUNC9(rd->thread.cond);

      }

      /* If we're still good to go, sleep. We are waiting for fill_buffer() to fill up some data. */

      if ( rd->thread_active )
      {
         // There is a very slim change of getting a deadlock using the cond_wait scheme.
         // This solution is rather dirty, but avoids complete deadlocks at the very least.

         FUNC11(rd->thread.cond_mutex);
         FUNC9(rd->thread.cond);

         if ( rd->thread_active )
         {
            FUNC0("[RSound] Thread going to sleep.\n");
            FUNC10(rd->thread.cond, rd->thread.cond_mutex);
            FUNC0("[RSound] Thread woke up.\n");
         }

         FUNC12(rd->thread.cond_mutex);
         FUNC0("[RSound] Thread unlocked cond_mutex.\n");
      }
      /* Abort request, chap. */
      else
      {
         FUNC9(rd->thread.cond);
         return;
      }

   }
}