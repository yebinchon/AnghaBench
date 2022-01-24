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
typedef  int /*<<< orphan*/  qnx_input_t ;
typedef  int /*<<< orphan*/  bps_event_t ;

/* Variables and functions */
 int BPS_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data)
{
   qnx_input_t *qnx = (qnx_input_t*)data;

   /* Request and process all available BPS events. */
   while(true)
   {
      bps_event_t *event = NULL;
      int rc = FUNC1(&event, 0);

      if(rc == BPS_SUCCESS)
      {
         int domain;

         if (!event)
            break;

         domain = FUNC0(event);
         if (domain == FUNC2())
            FUNC3(qnx, event);
         else if (domain == FUNC5())
            FUNC4(qnx, event);
      }
   }
}