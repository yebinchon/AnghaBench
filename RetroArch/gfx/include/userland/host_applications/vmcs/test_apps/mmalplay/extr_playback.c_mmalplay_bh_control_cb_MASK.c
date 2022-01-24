#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  status; } ;
struct TYPE_11__ {scalar_t__ cmd; scalar_t__ data; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; scalar_t__ userdata; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef  TYPE_3__ MMALPLAY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,char*) ; 
 scalar_t__ MMAL_EVENT_EOS ; 
 scalar_t__ MMAL_EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMALPLAY_T *ctx = (MMALPLAY_T *)port->userdata;
   FUNC1("%s(%p),%p,%4.4s", port->name, port, buffer, (char *)&buffer->cmd);

   if (buffer->cmd == MMAL_EVENT_ERROR || buffer->cmd == MMAL_EVENT_EOS)
   {
      if (buffer->cmd == MMAL_EVENT_ERROR)
      {
         FUNC0("error event from %s: %s", port->name,
                  FUNC3(*(MMAL_STATUS_T*)buffer->data));
         ctx->status = *(MMAL_STATUS_T *)buffer->data;
      }
      else if (buffer->cmd == MMAL_EVENT_EOS)
         FUNC0("%s: EOS received", port->name);
      FUNC4(ctx);
   }

   FUNC2(buffer);
}