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
typedef  int /*<<< orphan*/  msg ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {TYPE_2__ header; int /*<<< orphan*/  stream; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ WFC_IPC_MSG_SET_DEFERRAL_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  int /*<<< orphan*/  WFCContext ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_IPC_MSG_SET_DEFERRAL_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 

void FUNC3(WFCContext context, WFCNativeStreamType stream)
{
   WFC_IPC_MSG_SET_DEFERRAL_STREAM_T msg;
   VCOS_STATUS_T status;

   FUNC1("%s: context 0x%x stream 0x%x", VCOS_FUNCTION, context, stream);

   msg.header.type = WFC_IPC_MSG_SET_DEFERRAL_STREAM;
   msg.context = context;
   msg.stream = stream;

   status = FUNC2(&msg.header, sizeof(msg));

   FUNC0(status == VCOS_SUCCESS);
}