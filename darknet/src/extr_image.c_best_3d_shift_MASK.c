#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int w; int h; int c; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 float FLT_MAX ; 
 TYPE_1__ FUNC0 (TYPE_1__,int /*<<< orphan*/ ,int,int,int) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,float) ; 

int FUNC4(image a, image b, int min, int max)
{
    int i;
    int best = 0;
    float best_distance = FLT_MAX;
    for(i = min; i <= max; i += 2){
        image c = FUNC0(b, 0, i, b.w, b.h);
        float d = FUNC1(c.data, a.data, a.w*a.h*a.c, 100);
        if(d < best_distance){
            best_distance = d;
            best = i;
        }
        FUNC3("%d %f\n", i, d);
        FUNC2(c);
    }
    return best;
}