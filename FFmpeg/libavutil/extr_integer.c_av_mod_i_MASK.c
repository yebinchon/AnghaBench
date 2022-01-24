#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16_t ;
struct TYPE_16__ {int* v; } ;
typedef  TYPE_1__ AVInteger ;

/* Variables and functions */
 int AV_INTEGER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC2 (TYPE_1__) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int) ; 
 TYPE_1__ FUNC4 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ zero_i ; 

AVInteger FUNC6(AVInteger *quot, AVInteger a, AVInteger b){
    int i= FUNC2(a) - FUNC2(b);
    AVInteger quot_temp;
    if(!quot) quot = &quot_temp;

    if ((int16_t)a.v[AV_INTEGER_SIZE-1] < 0) {
        a = FUNC6(quot, FUNC4(zero_i, a), b);
        *quot = FUNC4(zero_i, *quot);
        return FUNC4(zero_i, a);
    }

    FUNC0((int16_t)a.v[AV_INTEGER_SIZE-1] >= 0 && (int16_t)b.v[AV_INTEGER_SIZE-1] >= 0);
    FUNC0(FUNC2(b)>=0);

    if(i > 0)
        b= FUNC3(b, -i);

    FUNC5(quot, 0, sizeof(AVInteger));

    while(i-- >= 0){
        *quot= FUNC3(*quot, -1);
        if(FUNC1(a, b) >= 0){
            a= FUNC4(a, b);
            quot->v[0] += 1;
        }
        b= FUNC3(b, 1);
    }
    return a;
}