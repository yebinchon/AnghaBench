#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct TYPE_5__ {size_t next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB ; 
 int SCREENWIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int WI_TITLEY ; 
 TYPE_2__* entering ; 
 TYPE_2__** lnames ; 
 TYPE_1__* wbs ; 

void FUNC2(void)
{
    int y = WI_TITLEY;

    // draw "Entering"
    FUNC1((SCREENWIDTH - FUNC0(entering->width))/2,
		y, FB, entering);

    // draw level
    y += (5*FUNC0(lnames[wbs->next]->height))/4;

    FUNC1((SCREENWIDTH - FUNC0(lnames[wbs->next]->width))/2,
		y, FB, lnames[wbs->next]);

}