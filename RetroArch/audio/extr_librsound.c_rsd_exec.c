
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_8__ {int socket; } ;
struct TYPE_9__ {int fifo_buffer; TYPE_1__ conn; } ;
typedef TYPE_2__ rsound_t ;
typedef int buffer ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int RSD_DEBUG (char*,...) ;
 int RSD_ERR (char*) ;
 int SOL_SOCKET ;
 int SO_NBIO ;
 int fcntl (int,int ,int ) ;
 int fifo_read (int ,char*,int) ;
 int fifo_read_avail (int ) ;
 int net_socketclose (int) ;
 int retro_assert (int ) ;
 int rsd_free (TYPE_2__*) ;
 scalar_t__ rsd_start (TYPE_2__*) ;
 scalar_t__ rsnd_close_ctl (TYPE_2__*) ;
 scalar_t__ rsnd_send_chunk (int,char*,int,int) ;
 int rsnd_stop_thread (TYPE_2__*) ;
 int setsockopt (int,int ,int ,int*,int) ;

int rsd_exec(rsound_t *rsound)
{
   retro_assert(rsound != ((void*)0));
   RSD_DEBUG("[RSound] rsd_exec().\n");


   if ( rsound->conn.socket < 0 )
   {
      RSD_DEBUG("[RSound] Calling rsd_start().\n");
      if ( rsd_start(rsound) < 0 )
      {
         RSD_ERR("[RSound] rsd_start() failed.\n");
         return -1;
      }
   }

   RSD_DEBUG("[RSound] Closing ctl.\n");
   if ( rsnd_close_ctl(rsound) < 0 )
      return -1;

   int fd = rsound->conn.socket;
   RSD_DEBUG("[RSound] Socket: %d.\n", fd);

   rsnd_stop_thread(rsound);





   fcntl(rsound->conn.socket, F_SETFL, O_NONBLOCK);




   if ( fifo_read_avail(rsound->fifo_buffer) > 0 )
   {
      char buffer[fifo_read_avail(rsound->fifo_buffer)];
      fifo_read(rsound->fifo_buffer, buffer, sizeof(buffer));
      if ( rsnd_send_chunk(fd, buffer, sizeof(buffer), 1) != (ssize_t)sizeof(buffer) )
      {
         RSD_DEBUG("[RSound] Failed flushing buffer.\n");
         net_socketclose(fd);
         return -1;
      }
   }

   RSD_DEBUG("[RSound] Returning from rsd_exec().\n");
   rsd_free(rsound);
   return fd;
}
