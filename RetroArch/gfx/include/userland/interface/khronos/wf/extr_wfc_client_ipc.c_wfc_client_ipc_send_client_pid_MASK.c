#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {TYPE_2__ header; void* pid_hi; void* pid_lo; } ;
typedef  TYPE_1__ WFC_IPC_MSG_SET_CLIENT_PID_T ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  WFC_IPC_MSG_SET_CLIENT_PID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,void*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static VCOS_STATUS_T FUNC3(void)
{
   WFC_IPC_MSG_SET_CLIENT_PID_T msg;
   uint64_t pid = FUNC1();
   uint32_t pid_lo = (uint32_t) pid;
   uint32_t pid_hi = (uint32_t) (pid >> 32);

   msg.header.type = WFC_IPC_MSG_SET_CLIENT_PID;
   msg.pid_lo = pid_lo;
   msg.pid_hi = pid_hi;

   FUNC0("%s: setting client pid to 0x%x%08x", VCOS_FUNCTION, pid_hi, pid_lo);

   return FUNC2(&msg.header, sizeof(msg));
}