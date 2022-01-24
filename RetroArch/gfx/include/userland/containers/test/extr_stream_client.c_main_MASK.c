#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int vc_container_net_status_t ;
typedef  int /*<<< orphan*/  send_buffer ;
typedef  int /*<<< orphan*/  recv_buffer ;
typedef  int /*<<< orphan*/  VC_CONTAINER_NET_T ;

/* Variables and functions */
 int MAX_BUFFER_LEN ; 
 int /*<<< orphan*/  VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS ; 
 int VC_CONTAINER_NET_ERROR_TIMED_OUT ; 
 int /*<<< orphan*/  VC_CONTAINER_NET_OPEN_FLAG_STREAM ; 
 int VC_CONTAINER_NET_SUCCESS ; 
 int /*<<< orphan*/  YIELD_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 char FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC11(int argc, char **argv)
{
   VC_CONTAINER_NET_T *sock;
   vc_container_net_status_t status;
   char send_buffer[MAX_BUFFER_LEN];
   char recv_buffer[MAX_BUFFER_LEN];
   int ready = 1;
   int to_send = 0;
   size_t received;

   if (argc < 3)
   {
      FUNC5("Usage:\n%s <address> <port>\n", argv[0]);
      return 1;
   }

   sock = FUNC7(argv[1], argv[2], VC_CONTAINER_NET_OPEN_FLAG_STREAM, &status);
   if (!sock)
   {
      FUNC5("vc_container_net_open failed: %d\n", status);
      return 2;
   }

   /* Use non-blocking I/O for both network and console */
   FUNC0(sock, VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS, YIELD_PERIOD_MS);
   FUNC4(1);

   while (ready)
   {
      if (FUNC1())
      {
         char c = FUNC2();

         if (c == 26)   /* CTRL+Z */
            break;

         send_buffer[to_send++] = c;

         if (c == '\r') /* Translate CR into CRLF */
         {
            c = '\n';
            FUNC3(c);
            send_buffer[to_send++] = c;
         }

         if (c == '\n' || to_send == sizeof(send_buffer) - 1)  /* Allow for next character needing translation */
         {
            int already_sent = 0, sent;

            /* Send a line at a time */
            while (to_send)
            {
               sent = FUNC10(sock, send_buffer + already_sent, to_send);
               if (!sent)
               {
                  FUNC5("vc_container_net_write failed: %d\n", FUNC9(sock));
                  to_send = 0;
                  ready = 0;
                  break;
               }
               to_send -= sent;
               already_sent += sent;
            }
         }
      }

      /* Read back and print any data from the server */
      received = FUNC8(sock, recv_buffer, sizeof(recv_buffer) - 1);
      if (received)
      {
         char *ptr = recv_buffer;

         while (received--)
            FUNC3(*ptr++);
      } else {
         vc_container_net_status_t net_status = FUNC9(sock);

         if (net_status != VC_CONTAINER_NET_ERROR_TIMED_OUT && net_status != VC_CONTAINER_NET_SUCCESS)
         {
            FUNC5("vc_container_net_read failed: %d\n", net_status);
            ready = 0;
         }
      }
   }

   FUNC4(0);

   FUNC6(sock);

   return 0;
}