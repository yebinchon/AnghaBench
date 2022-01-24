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
typedef  int /*<<< orphan*/  VC_CONTAINER_NET_T ;

/* Variables and functions */
 int VC_CONTAINER_NET_SUCCESS ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(int argc, char **argv)
{
   VC_CONTAINER_NET_T *sock;
   vc_container_net_status_t status;
   char *buffer;
   size_t buffer_size;
   size_t received;

   if (argc < 2)
   {
      FUNC1("Usage:\n%s <port>\n", argv[0]);
      return 1;
   }

   sock = FUNC5(NULL, argv[1], 0, &status);
   if (!sock)
   {
      FUNC1("vc_container_net_open failed: %d\n", status);
      return 2;
   }

   buffer_size = FUNC4(sock);
   buffer = (char *)FUNC0(buffer_size);
   if (!buffer)
   {
      FUNC3(sock);
      FUNC1("Failure allocating buffer\n");
      return 3;
   }

   while ((received = FUNC6(sock, buffer, buffer_size)) != 0)
   {
      char *ptr = buffer;

      while (received--)
         FUNC2(*ptr++);
   }

   if (FUNC7(sock) != VC_CONTAINER_NET_SUCCESS)
   {
      FUNC1("vc_container_net_read failed: %d\n", FUNC7(sock));
   }

   FUNC3(sock);

   return 0;
}