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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {TYPE_2__ header; int /*<<< orphan*/  image_handle; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 

void FUNC3(WFCNativeStreamType stream, uint32_t image_handle)
{
   WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA_T msg;
   VCOS_STATUS_T status;

   FUNC1("%s: stream 0x%x image 0x%x", VCOS_FUNCTION, stream, image_handle);

   msg.header.type = WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA;
   msg.stream = stream;
   msg.image_handle = image_handle;

   status = FUNC2(&msg.header, sizeof(msg));

   FUNC0(status == VCOS_SUCCESS);
}