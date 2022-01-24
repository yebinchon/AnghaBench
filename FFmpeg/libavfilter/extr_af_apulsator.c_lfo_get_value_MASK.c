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
struct TYPE_3__ {double phase; int mode; double amount; scalar_t__ offset; int /*<<< orphan*/  pwidth; } ;
typedef  TYPE_1__ SimpleLFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (double,int /*<<< orphan*/ ) ; 
 double FUNC1 (int,scalar_t__) ; 
 double M_PI ; 
#define  SAWDOWN 132 
#define  SAWUP 131 
#define  SINE 130 
#define  SQUARE 129 
#define  TRIANGLE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 (double,int) ; 
 double FUNC4 (double) ; 

__attribute__((used)) static double FUNC5(SimpleLFO *lfo)
{
    double phs = FUNC1(100, lfo->phase / FUNC1(1.99, FUNC0(0.01, lfo->pwidth)) + lfo->offset);
    double val;

    if (phs > 1)
        phs = FUNC3(phs, 1.);

    switch (lfo->mode) {
    case SINE:
        val = FUNC4(phs * 2 * M_PI);
        break;
    case TRIANGLE:
        if (phs > 0.75)
            val = (phs - 0.75) * 4 - 1;
        else if (phs > 0.25)
            val = -4 * phs + 2;
        else
            val = phs * 4;
        break;
    case SQUARE:
        val = phs < 0.5 ? -1 : +1;
        break;
    case SAWUP:
        val = phs * 2 - 1;
        break;
    case SAWDOWN:
        val = 1 - phs * 2;
        break;
    default: FUNC2(0);
    }

    return val * lfo->amount;
}