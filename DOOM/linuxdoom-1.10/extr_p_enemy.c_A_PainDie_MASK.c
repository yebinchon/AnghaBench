#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ angle; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 scalar_t__ ANG180 ; 
 scalar_t__ ANG270 ; 
 scalar_t__ ANG90 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

void FUNC2 (mobj_t* actor)
{
    FUNC0 (actor);
    FUNC1 (actor, actor->angle+ANG90);
    FUNC1 (actor, actor->angle+ANG180);
    FUNC1 (actor, actor->angle+ANG270);
}