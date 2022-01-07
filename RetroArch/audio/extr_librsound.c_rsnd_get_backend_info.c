
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_6__ {int socket; int ctl_socket; } ;
struct TYPE_5__ {int chunk_size; void* latency; } ;
struct TYPE_7__ {int buffer_size; int conn_type; TYPE_2__ conn; int * fifo_buffer; TYPE_1__ backend_info; } ;
typedef TYPE_3__ rsound_t ;


 size_t CHUNKSIZE ;
 int IPPROTO_TCP ;
 size_t LATENCY ;
 int MAX_CHUNK_SIZE ;
 int MAX_TCP_BUFSIZE ;
 int RSD_CONN_PROTO ;
 int RSD_CONN_TCP ;
 int RSD_DEBUG (char*) ;
 int RSD_ERR (char*) ;
 scalar_t__ RSND_HEADER_SIZE ;
 int SD_RECEIVE ;
 int SHUT_RD ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int TCP_NODELAY ;
 int fifo_free (int *) ;
 int * fifo_new (int) ;
 int net_shutdown (int ,int ) ;
 scalar_t__ rsnd_is_little_endian () ;
 scalar_t__ rsnd_recv_chunk (int ,void**,scalar_t__,int) ;
 int rsnd_swap_endian_32 (void**) ;
 int setsockopt (int ,int ,int ,int*,int) ;

__attribute__((used)) static int rsnd_get_backend_info ( rsound_t *rd )
{





   uint32_t rsnd_header[2] = {0};

   if ( rsnd_recv_chunk(rd->conn.socket, rsnd_header, 8, 1) != 8 )
   {
      RSD_ERR("[RSound] Couldn't receive chunk.\n");
      return -1;
   }



   if ( rsnd_is_little_endian() )
   {
      rsnd_swap_endian_32(&rsnd_header[0]);
      rsnd_swap_endian_32(&rsnd_header[1]);
   }

   rd->backend_info.latency = rsnd_header[0];
   rd->backend_info.chunk_size = rsnd_header[1];


   if ( rd->backend_info.chunk_size > 1024 || rd->backend_info.chunk_size <= 0 )
      rd->backend_info.chunk_size = 1024;


   if ( rd->buffer_size == 0 || rd->buffer_size < rd->backend_info.chunk_size * 2 )
      rd->buffer_size = rd->backend_info.chunk_size * 32;

   if ( rd->fifo_buffer != ((void*)0) )
      fifo_free(rd->fifo_buffer);
   rd->fifo_buffer = fifo_new (rd->buffer_size);
   if ( rd->fifo_buffer == ((void*)0) )
   {
      RSD_ERR("[RSound] Failed to create FIFO buffer.\n");
      return -1;
   }


   if ( rd->conn_type & RSD_CONN_TCP )
   {

      int bufsiz = rd->buffer_size;
      if (bufsiz > (1 << 14))
         bufsiz = (1 << 14);

      setsockopt(rd->conn.socket, SOL_SOCKET, SO_SNDBUF, &bufsiz, sizeof(int));
      bufsiz = rd->buffer_size;
      setsockopt(rd->conn.ctl_socket, SOL_SOCKET, SO_SNDBUF, &bufsiz, sizeof(int));
      bufsiz = rd->buffer_size;
      setsockopt(rd->conn.ctl_socket, SOL_SOCKET, SO_RCVBUF, &bufsiz, sizeof(int));

      int flag = 1;
      setsockopt(rd->conn.socket, IPPROTO_TCP, TCP_NODELAY, &flag, sizeof(int));
      flag = 1;
      setsockopt(rd->conn.ctl_socket, IPPROTO_TCP, TCP_NODELAY, &flag, sizeof(int));
   }



   if ( rsnd_recv_chunk(rd->conn.socket, rsnd_header, 8, 0) == 8 )
      rd->conn_type |= RSD_CONN_PROTO;
   else
   { RSD_DEBUG("[RSound] Failed to get new proto.\n"); }





   net_shutdown(rd->conn.socket, SHUT_RD);


   return 0;
}
