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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_4__ {int /*<<< orphan*/  second; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; int /*<<< orphan*/  year; } ;
typedef  TYPE_1__ sceCdCLOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STARTING_YEAR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

time_t FUNC4(time_t *t) {
   time_t tim;
   sceCdCLOCK clocktime; /* defined in libcdvd.h */

   FUNC3(&clocktime); /* libcdvd.a */
   FUNC2(&clocktime);

   tim =   FUNC1 (FUNC0(clocktime.year)+ STARTING_YEAR,
                        FUNC0(clocktime.month),
                        FUNC0(clocktime.day),
                        FUNC0(clocktime.hour),
                        FUNC0(clocktime.minute),
                        FUNC0(clocktime.second));

	if(t)
		*t = tim;

	return tim;
}