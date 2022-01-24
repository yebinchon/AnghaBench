#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  disp; } ;
struct TYPE_4__ {int /*<<< orphan*/  surface; } ;
typedef  TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;
typedef  int /*<<< orphan*/  EGLBoolean ;

/* Variables and functions */
 TYPE_3__ display ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(GRAPHICS_RESOURCE_HANDLE res)
{
   EGLBoolean result;
   result = FUNC0(display.disp, res->surface);
   FUNC1(result);
}