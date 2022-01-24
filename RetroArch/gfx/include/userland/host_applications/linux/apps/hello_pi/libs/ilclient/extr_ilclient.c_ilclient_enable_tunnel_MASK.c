#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  comp; } ;
struct TYPE_8__ {int /*<<< orphan*/  sink_port; TYPE_2__* sink; int /*<<< orphan*/  source_port; TYPE_2__* source; } ;
typedef  TYPE_1__ TUNNEL_T ;
typedef  scalar_t__ OMX_STATETYPE ;
typedef  scalar_t__ OMX_ERRORTYPE ;

/* Variables and functions */
 int ILCLIENT_EVENT_ERROR ; 
 int ILCLIENT_PORT_ENABLED ; 
 int /*<<< orphan*/  OMX_CommandPortEnable ; 
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 scalar_t__ OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_EventCmdComplete ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OMX_StateIdle ; 
 scalar_t__ OMX_StateLoaded ; 
 int /*<<< orphan*/  VCOS_EVENT_FLAGS_SUSPEND ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(TUNNEL_T *tunnel)
{
   OMX_STATETYPE state;
   OMX_ERRORTYPE error;

   FUNC2("ilclient: enable tunnel from %x/%d to %x/%d",
                         tunnel->source, tunnel->source_port,
                         tunnel->sink, tunnel->sink_port);

   error = FUNC1(tunnel->source->comp, OMX_CommandPortEnable, tunnel->source_port, NULL);
   FUNC7(error == OMX_ErrorNone);

   error = FUNC1(tunnel->sink->comp, OMX_CommandPortEnable, tunnel->sink_port, NULL);
   FUNC7(error == OMX_ErrorNone);

   // to complete, the sink component can't be in loaded state
   error = FUNC0(tunnel->sink->comp, &state);
   FUNC7(error == OMX_ErrorNone);
   if (state == OMX_StateLoaded)
   {
      int ret = 0;

      if(FUNC4(tunnel->sink, OMX_CommandPortEnable, tunnel->sink_port) != 0 ||
         FUNC1(tunnel->sink->comp, OMX_CommandStateSet, OMX_StateIdle, NULL) != OMX_ErrorNone ||
         (ret = FUNC5(tunnel->sink, OMX_CommandStateSet, OMX_StateIdle, tunnel->source)) < 0)
      {
         if(ret == -2)
         {
            // the error was reported fom the source component: clear this error and disable the sink component
            FUNC4(tunnel->source, OMX_CommandPortEnable, tunnel->source_port);
            FUNC3(tunnel->sink, tunnel->sink_port);
         }

         FUNC2("ilclient: could not change component state to IDLE");
         FUNC3(tunnel->source, tunnel->source_port);
         return -1;
      }
   }
   else
   {
      if (FUNC4(tunnel->sink, OMX_CommandPortEnable, tunnel->sink_port) != 0)
      {
         FUNC2("ilclient: could not change sink port %d to enabled", tunnel->sink_port);

         //Oops failed to enable the sink port
         FUNC3(tunnel->source, tunnel->source_port);
         //Clean up the port enable event from the source port.
         FUNC6(tunnel->source, OMX_EventCmdComplete,
                                 OMX_CommandPortEnable, 0, tunnel->source_port, 0,
                                 ILCLIENT_PORT_ENABLED | ILCLIENT_EVENT_ERROR, VCOS_EVENT_FLAGS_SUSPEND);
         return -1;
      }
   }

   if(FUNC4(tunnel->source, OMX_CommandPortEnable, tunnel->source_port) != 0)
   {
      FUNC2("ilclient: could not change source port %d to enabled", tunnel->source_port);

      //Failed to enable the source port
      FUNC3(tunnel->sink, tunnel->sink_port);
      return -1;
   }

   return 0;
}