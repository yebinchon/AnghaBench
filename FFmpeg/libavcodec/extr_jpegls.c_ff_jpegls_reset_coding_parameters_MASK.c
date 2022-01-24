#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int maxval; int bpp; int T1; int near; int T2; int reset; void* T3; } ;
typedef  TYPE_1__ JLSState ;

/* Variables and functions */
 int FUNC0 (int,int const) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,void*) ; 
 void* FUNC3 (int,int,int) ; 

void FUNC4(JLSState *s, int reset_all)
{
    const int basic_t1 = 3;
    const int basic_t2 = 7;
    const int basic_t3 = 21;
    int factor;

    if (s->maxval == 0 || reset_all)
        s->maxval = (1 << s->bpp) - 1;

    if (s->maxval >= 128) {
        factor = (FUNC1(s->maxval, 4095) + 128) >> 8;

        if (s->T1 == 0 || reset_all)
            s->T1 = FUNC3(factor * (basic_t1 - 2) + 2 + 3 * s->near,
                             s->near + 1, s->maxval);
        if (s->T2 == 0 || reset_all)
            s->T2 = FUNC3(factor * (basic_t2 - 3) + 3 + 5 * s->near,
                             s->T1, s->maxval);
        if (s->T3 == 0 || reset_all)
            s->T3 = FUNC3(factor * (basic_t3 - 4) + 4 + 7 * s->near,
                             s->T2, s->maxval);
    } else {
        factor = 256 / (s->maxval + 1);

        if (s->T1 == 0 || reset_all)
            s->T1 = FUNC3(FUNC0(2, basic_t1 / factor + 3 * s->near),
                             s->near + 1, s->maxval);
        if (s->T2 == 0 || reset_all)
            s->T2 = FUNC3(FUNC0(3, basic_t2 / factor + 5 * s->near),
                             s->T1, s->maxval);
        if (s->T3 == 0 || reset_all)
            s->T3 = FUNC3(FUNC0(4, basic_t3 / factor + 7 * s->near),
                             s->T2, s->maxval);
    }

    if (s->reset == 0 || reset_all)
        s->reset = 64;
    FUNC2(NULL, "[JPEG-LS RESET] T=%i,%i,%i\n", s->T1, s->T2, s->T3);
}