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
struct TYPE_5__ {float t; float x; float y; float z; float rx; float ry; } ;
struct TYPE_6__ {TYPE_1__ state2; TYPE_1__ state1; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Player ;

/* Variables and functions */
 float FUNC0 (float,double) ; 
 float FUNC1 (float,int) ; 
 float FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,float,float,float,float,float,int /*<<< orphan*/ ) ; 

void FUNC4(Player *player) {
    State *s1 = &player->state1;
    State *s2 = &player->state2;
    float t1 = s2->t - s1->t;
    float t2 = FUNC2() - s2->t;
    t1 = FUNC1(t1, 1);
    t1 = FUNC0(t1, 0.1);
    float p = FUNC1(t2 / t1, 1);
    FUNC3(
        player,
        s1->x + (s2->x - s1->x) * p,
        s1->y + (s2->y - s1->y) * p,
        s1->z + (s2->z - s1->z) * p,
        s1->rx + (s2->rx - s1->rx) * p,
        s1->ry + (s2->ry - s1->ry) * p,
        0);
}