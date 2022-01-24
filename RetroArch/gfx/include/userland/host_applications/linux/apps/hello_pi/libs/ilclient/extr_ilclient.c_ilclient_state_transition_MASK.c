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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int private; int /*<<< orphan*/  error_mask; int /*<<< orphan*/  comp; int /*<<< orphan*/  event; } ;
typedef  scalar_t__ OMX_STATETYPE ;
typedef  scalar_t__ OMX_ERRORTYPE ;
typedef  TYPE_1__ COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  ILCLIENT_ERROR_UNPOPULATED ; 
 int /*<<< orphan*/  ILCLIENT_EVENT_ERROR ; 
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 scalar_t__ OMX_ErrorNone ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ OMX_StateLoaded ; 
 int /*<<< orphan*/  VCOS_OR_CONSUME ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(COMPONENT_T *list[], OMX_STATETYPE state)
{
   OMX_ERRORTYPE error;
   int i, num;
   uint32_t set;

   num=0;
   while (list[num])
      num++;

   // if we transition the supplier port first, it will call freebuffer on the non
   // supplier, which will correctly signal a port unpopulated error.  We want to
   // ignore these errors.
   if (state == OMX_StateLoaded)
      for (i=0; i<num; i++)
         list[i]->error_mask |= ILCLIENT_ERROR_UNPOPULATED;
   for (i=0; i<num; i++)
      list[i]->private = ((FUNC2() >> 13) & 0xff)+1;

   for (i=0; i<num; i++)
   {
      // transition the components in a random order
      int j, min = -1;
      for (j=0; j<num; j++)
         if (list[j]->private && (min == -1 || list[min]->private > list[j]->private))
            min = j;

      list[min]->private = 0;

      FUNC3();
      //Clear error event for this component
      FUNC5(&list[min]->event, ILCLIENT_EVENT_ERROR, VCOS_OR_CONSUME, 0, &set);

      error = FUNC0(list[min]->comp, OMX_CommandStateSet, state, NULL);
      FUNC4(error == OMX_ErrorNone);
   }

   FUNC3();

   for (i=0; i<num; i++)
      if(FUNC1(list[i], OMX_CommandStateSet, state) < 0)
         FUNC4(0);

   if (state == OMX_StateLoaded)
      for (i=0; i<num; i++)
         list[i]->error_mask &= ~ILCLIENT_ERROR_UNPOPULATED;
}