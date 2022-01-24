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
struct TYPE_3__ {TYPE_2__ header; void* vpitch; void* pitch; void* height; void* width; void* format; void* handle; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,void*,void*,void*,void*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 

void FUNC3(WFCNativeStreamType stream,
      uint32_t handle, uint32_t format, uint32_t width, uint32_t height,
      uint32_t pitch, uint32_t vpitch)
{
   WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS_T msg;
   VCOS_STATUS_T status;

   FUNC1("%s: stream 0x%x image 0x%x format 0x%x width %u height %u"
         " pitch %u vpitch %u",
         VCOS_FUNCTION, stream, handle, format, width, height, pitch, vpitch);

   msg.header.type = WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS;
   msg.stream = stream;
   msg.handle = handle;
   msg.format = format;
   msg.width = width;
   msg.height = height;
   msg.pitch = pitch;
   msg.vpitch = vpitch;

   status = FUNC2(&msg.header, sizeof(msg));
   FUNC0(status == VCOS_SUCCESS);
}