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
 scalar_t__ FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC9(int argc, char **argv)
{
   VC_CONTAINER_NET_T *sock;
   vc_container_net_status_t status;
   char *buffer;
   size_t buffer_size;

   if (argc < 3)
   {
      FUNC2("Usage:\n%s <address> <port>\n", argv[0]);
      return 1;
   }

   sock = FUNC6(argv[1], argv[2], 0, &status);
   if (!sock)
   {
      FUNC2("vc_container_net_open failed: %d\n", status);
      return 2;
   }

   buffer_size = FUNC5(sock);
   buffer = (char *)FUNC1(buffer_size);
   if (!buffer)
   {
      FUNC4(sock);
      FUNC2("Failure allocating buffer\n");
      return 3;
   }

   FUNC2("Don't enter more than %d characters in one line!\n", (int)buffer_size);

   while (FUNC0(buffer, buffer_size, stdin))
   {
      if (!FUNC8(sock, buffer, FUNC3(buffer)))
      {
         FUNC2("vc_container_net_write failed: %d\n", FUNC7(sock));
         break;
      }
   }

   FUNC4(sock);

   return 0;
}