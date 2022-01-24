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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  gdb_client ;

/* Variables and functions */
 int /*<<< orphan*/  YAB_THREAD_GDBSTUBCLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC2(void *context, u32 addr, void * userdata) {
   gdb_client * client = userdata;

   FUNC1(client, "S05", 3);

   FUNC0(YAB_THREAD_GDBSTUBCLIENT);
}