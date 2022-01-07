
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cond; int cond_mutex; int mutex; int thread; } ;
struct TYPE_9__ {int chunk_size; } ;
struct TYPE_8__ {int socket; } ;
struct TYPE_11__ {int conn_type; int total_written; int channels; int rate; int samplesize; int has_written; TYPE_3__ thread; scalar_t__ thread_active; int start_time; TYPE_2__ backend_info; TYPE_1__ conn; int fifo_buffer; } ;
typedef TYPE_4__ rsound_t ;
typedef int buffer ;


 int RSD_CONN_PROTO ;
 int RSD_DEBUG (char*) ;
 int _TEST_CANCEL () ;
 int fifo_read (int ,char*,int) ;
 scalar_t__ fifo_read_avail (int ) ;
 int rsnd_get_time_usec () ;
 int rsnd_reset (TYPE_4__*) ;
 int rsnd_send_chunk (int ,char*,int,int) ;
 int rsnd_send_info_query (TYPE_4__*) ;
 int rsnd_update_server_info (TYPE_4__*) ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int sthread_detach (int ) ;

__attribute__((used)) static void rsnd_thread ( void * thread_data )
{

   rsound_t *rd = thread_data;
   int rc;
   char buffer[rd->backend_info.chunk_size];



   for (;;)
   {
      for(;;)
      {
         _TEST_CANCEL();



         if ( (rd->conn_type & RSD_CONN_PROTO) && (rd->total_written > rd->channels * rd->rate * rd->samplesize) )
         {
            rsnd_send_info_query(rd);
            rsnd_update_server_info(rd);
         }


         slock_lock(rd->thread.mutex);
         if ( fifo_read_avail(rd->fifo_buffer) < rd->backend_info.chunk_size || !rd->thread_active )
         {
            slock_unlock(rd->thread.mutex);
            break;
         }
         slock_unlock(rd->thread.mutex);

         _TEST_CANCEL();
         slock_lock(rd->thread.mutex);
         fifo_read(rd->fifo_buffer, buffer, sizeof(buffer));
         slock_unlock(rd->thread.mutex);
         rc = rsnd_send_chunk(rd->conn.socket, buffer, sizeof(buffer), 1);


         if ( rc != (int)rd->backend_info.chunk_size )
         {
            _TEST_CANCEL();
            rsnd_reset(rd);


            scond_signal(rd->thread.cond);


            sthread_detach(rd->thread.thread);
            return;
         }


         if ( !rd->has_written )
         {
            slock_lock(rd->thread.mutex);
            rd->start_time = rsnd_get_time_usec();
            rd->has_written = 1;
            slock_unlock(rd->thread.mutex);
         }


         slock_lock(rd->thread.mutex);
         rd->total_written += rc;
         slock_unlock(rd->thread.mutex);


         scond_signal(rd->thread.cond);

      }



      if ( rd->thread_active )
      {



         slock_lock(rd->thread.cond_mutex);
         scond_signal(rd->thread.cond);

         if ( rd->thread_active )
         {
            RSD_DEBUG("[RSound] Thread going to sleep.\n");
            scond_wait(rd->thread.cond, rd->thread.cond_mutex);
            RSD_DEBUG("[RSound] Thread woke up.\n");
         }

         slock_unlock(rd->thread.cond_mutex);
         RSD_DEBUG("[RSound] Thread unlocked cond_mutex.\n");
      }

      else
      {
         scond_signal(rd->thread.cond);
         return;
      }

   }
}
