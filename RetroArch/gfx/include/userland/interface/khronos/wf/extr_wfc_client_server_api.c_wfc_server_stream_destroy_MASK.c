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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {TYPE_2__ header; void* pid_hi; void* pid_lo; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ WFC_IPC_MSG_SS_DESTROY_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_IPC_MSG_SS_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 

void FUNC3(WFCNativeStreamType stream, uint32_t pid_lo, uint32_t pid_hi)
{
   WFC_IPC_MSG_SS_DESTROY_T msg;
   VCOS_STATUS_T status;

   FUNC1("%s: stream 0x%x", VCOS_FUNCTION, stream);

   msg.header.type = WFC_IPC_MSG_SS_DESTROY;
   msg.stream = stream;
   msg.pid_lo = pid_lo;
   msg.pid_hi = pid_hi;

   status = FUNC2(&msg.header, sizeof(msg));

   FUNC0(status == VCOS_SUCCESS);
}