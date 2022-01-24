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
struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
typedef  TYPE_1__ VIDEOMODE_resolution_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 unsigned int FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(double *w, double *h)
{
	VIDEOMODE_resolution_t *res = FUNC0();
	unsigned int d = FUNC1(res->width, res->height);
	*w = (double)res->width / d;
	*h = (double)res->height / d;
}