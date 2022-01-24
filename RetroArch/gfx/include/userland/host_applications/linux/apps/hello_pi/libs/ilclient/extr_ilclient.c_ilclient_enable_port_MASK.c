#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  comp; } ;
typedef  scalar_t__ OMX_ERRORTYPE ;
typedef  TYPE_1__ COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  OMX_CommandPortEnable ; 
 scalar_t__ OMX_ErrorNone ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(COMPONENT_T *comp, int portIndex)
{
   OMX_ERRORTYPE error;
   error = FUNC0(comp->comp, OMX_CommandPortEnable, portIndex, NULL);
   FUNC2(error == OMX_ErrorNone);
   if(FUNC1(comp, OMX_CommandPortEnable, portIndex) < 0)
      FUNC2(0);
}