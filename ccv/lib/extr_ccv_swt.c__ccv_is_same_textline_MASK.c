#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x; int width; int y; int height; } ;
struct TYPE_4__ {TYPE_1__ rect; } ;
typedef  TYPE_2__ ccv_textline_t ;

/* Variables and functions */
 double FUNC0 (int,int) ; 
 double FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(const void* a, const void* b, void* data)
{
	ccv_textline_t* t1 = (ccv_textline_t*)a;
	ccv_textline_t* t2 = (ccv_textline_t*)b;
	int width = FUNC1(t1->rect.x + t1->rect.width, t2->rect.x + t2->rect.width) - FUNC0(t1->rect.x, t2->rect.x);
	int height = FUNC1(t1->rect.y + t1->rect.height, t2->rect.y + t2->rect.height) - FUNC0(t1->rect.y, t2->rect.y);
	/* overlapped 10% */
	double* thresh = (double*)data;
	return (width > 0 && height > 0 &&
			width * height > thresh[0] * FUNC0(t1->rect.width * t1->rect.height, t2->rect.width * t2->rect.height) &&
			width * height > thresh[1] * FUNC1(t1->rect.width * t1->rect.height, t2->rect.width * t2->rect.height));
}