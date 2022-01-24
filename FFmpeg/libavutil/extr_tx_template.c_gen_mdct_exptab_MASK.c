#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {double re; double im; } ;
struct TYPE_4__ {TYPE_3__* exptab; } ;
typedef  TYPE_1__ AVTXContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int M_PI_2 ; 
 TYPE_3__* FUNC1 (int,int) ; 
 double FUNC2 (double const) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 double FUNC4 (double const) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVTXContext *s, int len4, double scale)
{
    const double theta = (scale < 0 ? len4 : 0) + 1.0/8.0;

    if (!(s->exptab = FUNC1(len4, sizeof(*s->exptab))))
        return FUNC0(ENOMEM);

    scale = FUNC5(FUNC3(scale));
    for (int i = 0; i < len4; i++) {
        const double alpha = M_PI_2 * (i + theta) / len4;
        s->exptab[i].re = FUNC2(alpha) * scale;
        s->exptab[i].im = FUNC4(alpha) * scale;
    }

    return 0;
}