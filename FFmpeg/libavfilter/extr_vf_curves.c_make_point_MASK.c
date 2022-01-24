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
struct keypoint {double x; double y; struct keypoint* next; } ;

/* Variables and functions */
 struct keypoint* FUNC0 (int) ; 

__attribute__((used)) static struct keypoint *FUNC1(double x, double y, struct keypoint *next)
{
    struct keypoint *point = FUNC0(sizeof(*point));

    if (!point)
        return NULL;
    point->x = x;
    point->y = y;
    point->next = next;
    return point;
}