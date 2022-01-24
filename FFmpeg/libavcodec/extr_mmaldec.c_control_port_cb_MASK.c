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
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ cmd; scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ userdata; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ MMAL_EVENT_ERROR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    AVCodecContext *avctx = (AVCodecContext*)port->userdata;
    MMAL_STATUS_T status;

    if (buffer->cmd == MMAL_EVENT_ERROR) {
        status = *(uint32_t *)buffer->data;
        FUNC1(avctx, AV_LOG_ERROR, "MMAL error %d on control port\n", (int)status);
    } else {
        FUNC1(avctx, AV_LOG_WARNING, "Unknown MMAL event %s on control port\n",
               FUNC0(buffer->cmd));
    }

    FUNC2(buffer);
}