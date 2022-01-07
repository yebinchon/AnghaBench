
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cond; int mutex; } ;
struct TYPE_5__ {int socket; int ctl_socket; } ;
struct TYPE_7__ {TYPE_2__ thread; scalar_t__ delay_offset; scalar_t__ thread_active; scalar_t__ bytes_in_buffer; scalar_t__ has_written; scalar_t__ ready_for_data; scalar_t__ total_written; TYPE_1__ conn; } ;
typedef TYPE_3__ rsound_t ;


 int net_socketclose (int) ;
 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static int rsnd_reset(rsound_t *rd)
{
   if ( rd->conn.socket != -1 )
      net_socketclose(rd->conn.socket);

   if ( rd->conn.socket != 1 )
      net_socketclose(rd->conn.ctl_socket);


   slock_lock(rd->thread.mutex);
   rd->conn.socket = -1;
   rd->conn.ctl_socket = -1;
   rd->total_written = 0;
   rd->ready_for_data = 0;
   rd->has_written = 0;
   rd->bytes_in_buffer = 0;
   rd->thread_active = 0;
   rd->delay_offset = 0;
   slock_unlock(rd->thread.mutex);
   scond_signal(rd->thread.cond);

   return 0;
}
