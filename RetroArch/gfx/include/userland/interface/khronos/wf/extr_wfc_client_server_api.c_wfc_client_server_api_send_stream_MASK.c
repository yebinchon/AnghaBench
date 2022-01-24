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
typedef  int /*<<< orphan*/  WFC_IPC_MSG_TYPE ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {TYPE_2__ header; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ WFC_IPC_MSG_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 

__attribute__((used)) static VCOS_STATUS_T FUNC1(WFC_IPC_MSG_TYPE msg_type, WFCNativeStreamType stream)
{
   WFC_IPC_MSG_STREAM_T msg;

   msg.header.type = msg_type;
   msg.stream = stream;

   return FUNC0(&msg.header, sizeof(msg));
}