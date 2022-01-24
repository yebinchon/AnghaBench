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
struct TYPE_4__ {scalar_t__ count; scalar_t__ length; size_t last; int /*<<< orphan*/  sum; int /*<<< orphan*/ * h; } ;
typedef  int /*<<< orphan*/  TIME_T ;
typedef  TYPE_1__ FILTER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FILTER_T *filter, TIME_T sample)
{
   if (filter->count == filter->length)
      FUNC0(filter);

   filter->last = FUNC1(filter->last, filter->length);
   filter->h[filter->last] = sample;
   filter->sum = FUNC2(filter->sum, sample);
   filter->count++;
}