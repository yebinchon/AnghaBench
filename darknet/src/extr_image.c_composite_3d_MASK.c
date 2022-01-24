#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int h; int w; int c; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int FUNC0 (TYPE_1__,TYPE_1__,int,int) ; 
 TYPE_1__ FUNC1 (TYPE_1__,int,int,int,int) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,char*) ; 

void FUNC6(char *f1, char *f2, char *out, int delta)
{
    if(!out) out = "out";
    image a = FUNC3(f1, 0,0,0);
    image b = FUNC3(f2, 0,0,0);
    int shift = FUNC0(a, b, -a.h/100, a.h/100);

    image c1 = FUNC1(b, 10, shift, b.w, b.h);
    float d1 = FUNC2(c1.data, a.data, a.w*a.h*a.c, 100);
    image c2 = FUNC1(b, -10, shift, b.w, b.h);
    float d2 = FUNC2(c2.data, a.data, a.w*a.h*a.c, 100);

    if(d2 < d1 && 0){
        image swap = a;
        a = b;
        b = swap;
        shift = -shift;
        FUNC4("swapped, %d\n", shift);
    }
    else{
        FUNC4("%d\n", shift);
    }

    image c = FUNC1(b, delta, shift, a.w, a.h);
    int i;
    for(i = 0; i < c.w*c.h; ++i){
        c.data[i] = a.data[i];
    }
    FUNC5(c, out);
}