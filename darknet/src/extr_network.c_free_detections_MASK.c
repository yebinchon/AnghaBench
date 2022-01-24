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
struct TYPE_4__ {struct TYPE_4__* mask; struct TYPE_4__* prob; } ;
typedef  TYPE_1__ detection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(detection *dets, int n)
{
    int i;
    for(i = 0; i < n; ++i){
        FUNC0(dets[i].prob);
        if(dets[i].mask) FUNC0(dets[i].mask);
    }
    FUNC0(dets);
}