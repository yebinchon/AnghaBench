#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pointer_status {int /*<<< orphan*/  pointer_y; int /*<<< orphan*/  pointer_x; } ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(
      struct pointer_status *pointer, WPARAM lParam)
{
   POINT point;

   point.x = FUNC0(lParam);
   point.y = FUNC1(lParam);
   FUNC2((HWND)FUNC3(), &point);
   pointer->pointer_x = point.x;
   pointer->pointer_y = point.y;
}