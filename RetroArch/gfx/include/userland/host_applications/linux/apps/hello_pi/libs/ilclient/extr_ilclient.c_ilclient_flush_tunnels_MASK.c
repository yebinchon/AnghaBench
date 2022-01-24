#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  comp; } ;
struct TYPE_4__ {int /*<<< orphan*/  sink_port; TYPE_2__* sink; int /*<<< orphan*/  source_port; TYPE_2__* source; } ;
typedef  TYPE_1__ TUNNEL_T ;
typedef  scalar_t__ OMX_ERRORTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ILCLIENT_PORT_FLUSH ; 
 int /*<<< orphan*/  OMX_CommandFlush ; 
 scalar_t__ OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_EventCmdComplete ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VCOS_EVENT_FLAGS_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(TUNNEL_T *tunnel, int max)
{
   OMX_ERRORTYPE error;
   int i;

   i=0;
   while (tunnel[i].source && (max == 0 || i < max))
   {
      error = FUNC0(tunnel[i].source->comp, OMX_CommandFlush, tunnel[i].source_port, NULL);
      FUNC2(error == OMX_ErrorNone);

      error = FUNC0(tunnel[i].sink->comp, OMX_CommandFlush, tunnel[i].sink_port, NULL);
      FUNC2(error == OMX_ErrorNone);

      FUNC1(tunnel[i].source, OMX_EventCmdComplete,
                              OMX_CommandFlush, 0, tunnel[i].source_port, 0,
                              ILCLIENT_PORT_FLUSH, VCOS_EVENT_FLAGS_SUSPEND);
      FUNC1(tunnel[i].sink, OMX_EventCmdComplete,
                              OMX_CommandFlush, 0, tunnel[i].sink_port, 0,
                              ILCLIENT_PORT_FLUSH, VCOS_EVENT_FLAGS_SUSPEND);
      i++;
   }
}