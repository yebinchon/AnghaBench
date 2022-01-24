#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int actions; int /*<<< orphan*/  enabled; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_5__* ports; scalar_t__ cmd_thread_used; } ;
typedef  size_t OMX_U32 ;
typedef  scalar_t__ OMX_HANDLETYPE ;
typedef  int /*<<< orphan*/  OMX_ERRORTYPE ;
typedef  TYPE_1__ MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int MMALOMX_ACTION_CHECK_DEALLOCATED ; 
 int MMALOMX_ACTION_CHECK_FLUSHED ; 
 int MMALOMX_ACTION_DISABLE ; 
 int MMALOMX_ACTION_FLUSH ; 
 int MMALOMX_ACTION_NOTIFY_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 int /*<<< orphan*/  OMX_CommandPortDisable ; 
 int /*<<< orphan*/  OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_EventCmdComplete ; 
 scalar_t__ OMX_StateLoaded ; 
 scalar_t__ OMX_StateWaitForResources ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

OMX_ERRORTYPE FUNC4(
   OMX_HANDLETYPE hComponent,
   OMX_U32 nPortIndex)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   component->ports[nPortIndex].enabled = MMAL_FALSE;

   if (component->state == OMX_StateLoaded ||
       component->state == OMX_StateWaitForResources)
   {
      FUNC2(component, OMX_EventCmdComplete, OMX_CommandPortDisable, nPortIndex, NULL);
      return OMX_ErrorNone;
   }

   FUNC0(component, &component->ports[nPortIndex]);
   component->ports[nPortIndex].actions =
      MMALOMX_ACTION_DISABLE|MMALOMX_ACTION_CHECK_DEALLOCATED|MMALOMX_ACTION_NOTIFY_DISABLE;
   if (component->cmd_thread_used)
      component->ports[nPortIndex].actions |=
         MMALOMX_ACTION_FLUSH|MMALOMX_ACTION_CHECK_FLUSHED;
   FUNC1(component, &component->ports[nPortIndex]);

   FUNC3(component);

   return OMX_ErrorNone;
}