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
typedef  enum p32x_event { ____Placeholder_p32x_event } p32x_event ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 unsigned int event_time_next ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(SH2 *sh2, enum p32x_event event, int after)
{
  unsigned int now = FUNC1(sh2);
  int left_to_next;

  FUNC0(now, event, after);

  left_to_next = (event_time_next - now) * 3;
  FUNC2(sh2, left_to_next);
}