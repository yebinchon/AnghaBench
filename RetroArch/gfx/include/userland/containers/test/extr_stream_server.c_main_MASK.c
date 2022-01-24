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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  VC_CONTAINER_NET_T ;

/* Variables and functions */
 int MAX_BUFFER_LEN ; 
 int MAX_NAME_LEN ; 
 int VC_CONTAINER_NET_ERROR_CONNECTION_LOST ; 
 int /*<<< orphan*/  VC_CONTAINER_NET_OPEN_FLAG_STREAM ; 
 int VC_CONTAINER_NET_SUCCESS ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned short*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (int /*<<< orphan*/ *,char*,size_t) ; 

int FUNC14(int argc, char **argv)
{
   VC_CONTAINER_NET_T *server_sock, *sock;
   vc_container_net_status_t status;
   char buffer[MAX_BUFFER_LEN];
   char name[MAX_NAME_LEN];
   unsigned short port;
   int ii, connections = 1;
   size_t received;

   if (argc < 2)
   {
      FUNC1("Usage:\n%s <port> [<connections>]\n", argv[0]);
      return 1;
   }

   server_sock = FUNC10(NULL, argv[1], VC_CONTAINER_NET_OPEN_FLAG_STREAM, &status);
   if (!server_sock)
   {
      FUNC1("vc_container_net_open failed: %d\n", status);
      return 2;
   }

   if (argc > 2)
   {
      FUNC3(argv[2], "%d", &connections);
   }

   status = FUNC9(server_sock, connections);
   if (status != VC_CONTAINER_NET_SUCCESS)
   {
      FUNC1("vc_container_net_listen failed: %d\n", status);
      FUNC6(server_sock);
      return 3;
   }

   for (ii = 0; ii < connections; ii++)
   {
      status = FUNC5(server_sock, &sock);
      if (status != VC_CONTAINER_NET_SUCCESS)
      {
         FUNC1("vc_container_net_accept failed: %d\n", status);
         FUNC6(server_sock);
         return 3;
      }

      FUNC4(name, "<unknown>");
      FUNC7(sock, name, sizeof(name));
      FUNC8(sock, &port);
      FUNC1("Connection from %s:%hu\n", name, port);

      while ((received = FUNC11(sock, buffer, sizeof(buffer) - 1)) != 0)
      {
         char *ptr = buffer;
         size_t jj;

         FUNC1("Rx:");

         /* Flip case and echo data back to client */
         for (jj = 0; jj < received; jj++, ptr++)
         {
            char c = *ptr;

            FUNC2(c);
            if (FUNC0((unsigned char)c))
               *ptr ^= 0x20;  /* Swaps case of ASCII alphabetic characters */
         }

         ptr = buffer;

         FUNC1("Tx:");
         while (received)
         {
            size_t sent;

            sent = FUNC13(sock, ptr, received);
            if (!sent)
            {
               status = FUNC12(sock);
               FUNC1("vc_container_net_write failed: %d\n", status);
               break;
            }

            /* Print out bytes actually sent */
            while (sent--)
            {
               received--;
               FUNC2(*ptr++);
            }
         }
      }

      status = FUNC12(sock);

      if (status != VC_CONTAINER_NET_SUCCESS && status != VC_CONTAINER_NET_ERROR_CONNECTION_LOST)
         break;

      FUNC6(sock);
   }

   if (status != VC_CONTAINER_NET_SUCCESS)
   {
      FUNC1("vc_container_net_read failed: %d\n", status);
   }

   FUNC6(server_sock);

   return 0;
}