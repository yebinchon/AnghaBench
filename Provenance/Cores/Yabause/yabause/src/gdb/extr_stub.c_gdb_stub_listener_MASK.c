#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  context; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ gdb_stub ;
struct TYPE_7__ {int sock; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ gdb_client ;
typedef  int YabSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  YAB_THREAD_GDBSTUBCLIENT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  gdb_client_lock ; 
 int /*<<< orphan*/  gdb_stub_client ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void * data)
{
   gdb_stub * stub = data;
   YabSock sock;

   while(1)
   {
      gdb_client * client;

      sock = FUNC1(stub->server);
      if (sock == -1)
      {
         FUNC4("accept");
         return;
      }

      client = FUNC3(sizeof(gdb_client));
      client->context = stub->context;
      client->sock = sock;

      FUNC0(stub->context, gdb_client_lock, client);

      FUNC2(YAB_THREAD_GDBSTUBCLIENT, gdb_stub_client, client);
   }
}