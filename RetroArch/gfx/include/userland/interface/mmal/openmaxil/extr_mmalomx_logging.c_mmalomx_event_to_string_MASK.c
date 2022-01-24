#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ OMX_EVENTTYPE ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char const**) ; 

const char *FUNC2(OMX_EVENTTYPE event)
{
  static const char *names[] = {
    "OMX_EventCmdComplete", "OMX_EventError", "OMX_EventMark",
    "OMX_EventPortSettingsChanged", "OMX_EventBufferFlag",
    "OMX_EventResourcesAcquired", "OMX_EventComponentResumed",
    "OMX_EventDynamicResourcesAvailable", "OMX_EventPortFormatDetected",
    "OMX_Event unknown"
  };

  return names[FUNC0((int)event, 0, (int)FUNC1(names)-1)];
}