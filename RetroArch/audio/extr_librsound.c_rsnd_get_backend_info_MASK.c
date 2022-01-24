#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  socket; int /*<<< orphan*/  ctl_socket; } ;
struct TYPE_5__ {int chunk_size; void* latency; } ;
struct TYPE_7__ {int buffer_size; int conn_type; TYPE_2__ conn; int /*<<< orphan*/ * fifo_buffer; TYPE_1__ backend_info; } ;
typedef  TYPE_3__ rsound_t ;

/* Variables and functions */
 size_t CHUNKSIZE ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 size_t LATENCY ; 
 int MAX_CHUNK_SIZE ; 
 int MAX_TCP_BUFSIZE ; 
 int RSD_CONN_PROTO ; 
 int RSD_CONN_TCP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ RSND_HEADER_SIZE ; 
 int /*<<< orphan*/  SD_RECEIVE ; 
 int /*<<< orphan*/  SHUT_RD ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void**,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC9 ( rsound_t *rd )
{
#define RSND_HEADER_SIZE 8
#define LATENCY 0
#define CHUNKSIZE 1

   // Header is 2 uint32_t's. = 8 bytes.
   uint32_t rsnd_header[2] = {0};

   if ( FUNC6(rd->conn.socket, rsnd_header, RSND_HEADER_SIZE, 1) != RSND_HEADER_SIZE )
   {
      FUNC1("[RSound] Couldn't receive chunk.\n");
      return -1;
   }

   /* Again, we can't be 100% certain that sizeof(backend_info_t) is equal on every system */

   if ( FUNC5() )
   {
      FUNC7(&rsnd_header[LATENCY]);
      FUNC7(&rsnd_header[CHUNKSIZE]);
   }

   rd->backend_info.latency = rsnd_header[LATENCY];
   rd->backend_info.chunk_size = rsnd_header[CHUNKSIZE];

#define MAX_CHUNK_SIZE 1024 // We do not want larger chunk sizes than this.
   if ( rd->backend_info.chunk_size > MAX_CHUNK_SIZE || rd->backend_info.chunk_size <= 0 )
      rd->backend_info.chunk_size = MAX_CHUNK_SIZE;

   /* Assumes a default buffer size should it cause problems of being too small */
   if ( rd->buffer_size == 0 || rd->buffer_size < rd->backend_info.chunk_size * 2 )
      rd->buffer_size = rd->backend_info.chunk_size * 32;

   if ( rd->fifo_buffer != NULL )
      FUNC2(rd->fifo_buffer);
   rd->fifo_buffer = FUNC3 (rd->buffer_size);
   if ( rd->fifo_buffer == NULL )
   {
      FUNC1("[RSound] Failed to create FIFO buffer.\n");
      return -1;
   }

   // Only bother with setting network buffer size if we're doing TCP.
   if ( rd->conn_type & RSD_CONN_TCP )
   {
#define MAX_TCP_BUFSIZE (1 << 14)
      int bufsiz = rd->buffer_size;
      if (bufsiz > MAX_TCP_BUFSIZE)
         bufsiz = MAX_TCP_BUFSIZE;

      FUNC8(rd->conn.socket, SOL_SOCKET, SO_SNDBUF, &bufsiz, sizeof(int));
      bufsiz = rd->buffer_size;
      FUNC8(rd->conn.ctl_socket, SOL_SOCKET, SO_SNDBUF, &bufsiz, sizeof(int));
      bufsiz = rd->buffer_size;
      FUNC8(rd->conn.ctl_socket, SOL_SOCKET, SO_RCVBUF, &bufsiz, sizeof(int));

      int flag = 1;
      FUNC8(rd->conn.socket, IPPROTO_TCP, TCP_NODELAY, &flag, sizeof(int));
      flag = 1;
      FUNC8(rd->conn.ctl_socket, IPPROTO_TCP, TCP_NODELAY, &flag, sizeof(int));
   }

   // Can we read the last 8 bytes so we can use the protocol interface?
   // This is non-blocking.
   if ( FUNC6(rd->conn.socket, rsnd_header, RSND_HEADER_SIZE, 0) == RSND_HEADER_SIZE )
      rd->conn_type |= RSD_CONN_PROTO;
   else
   {  FUNC0("[RSound] Failed to get new proto.\n"); }

   // We no longer want to read from this socket.
#ifdef _WIN32
   net_shutdown(rd->conn.socket, SD_RECEIVE);
#elif !defined(__APPLE__) // OSX doesn't seem to like shutdown()
   FUNC4(rd->conn.socket, SHUT_RD);
#endif

   return 0;
}