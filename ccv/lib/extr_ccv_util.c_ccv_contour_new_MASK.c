#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_point_t ;
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {scalar_t__ set; scalar_t__ size; TYPE_1__ rect; } ;
typedef  TYPE_2__ ccv_contour_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ) ; 

ccv_contour_t* FUNC2(int set)
{
	ccv_contour_t* contour = (ccv_contour_t*)FUNC0(sizeof(ccv_contour_t));
	contour->rect.x = contour->rect.y =
	contour->rect.width = contour->rect.height = 0;
	contour->size = 0;
	if (set)
		contour->set = FUNC1(sizeof(ccv_point_t), 5, 0);
	else
		contour->set = 0;
	return contour;
}