#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  server; int /*<<< orphan*/ * context; } ;
typedef  TYPE_1__ gdb_stub ;
typedef  int /*<<< orphan*/  YabSock ;
typedef  int /*<<< orphan*/  SH2_struct ;

/* Variables and functions */
 int /*<<< orphan*/  YAB_THREAD_GDBSTUBLISTENER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  gdb_stub_listener ; 
 TYPE_1__* FUNC3 (int) ; 

int FUNC4(SH2_struct * context, int port)
{
   int opt = 1;
   YabSock server;
   gdb_stub * stub;
   int ret;

   FUNC0();

   if ((ret = FUNC1(port, &server)) != 0)
      return ret;

   stub = FUNC3(sizeof(gdb_stub));
   stub->context = context;
   stub->server = server;

   FUNC2(YAB_THREAD_GDBSTUBLISTENER, gdb_stub_listener, stub);

   return 0;
}