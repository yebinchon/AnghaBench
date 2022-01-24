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
struct TYPE_3__ {double re; double im; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int M_PI ; 
 TYPE_1__* FUNC1 (int,int) ; 
 double FUNC2 (double) ; 
 TYPE_1__* exptab ; 
 double FUNC3 (double) ; 

__attribute__((used)) static int FUNC4(int nbits, int inverse)
{
    int i, n = 1 << nbits;

    exptab = FUNC1((n / 2), sizeof(*exptab));
    if (!exptab)
        return FUNC0(ENOMEM);

    for (i = 0; i < (n / 2); i++) {
        double alpha = 2 * M_PI * (float) i / (float) n;
        double c1 = FUNC2(alpha), s1 = FUNC3(alpha);
        if (!inverse)
            s1 = -s1;
        exptab[i].re = c1;
        exptab[i].im = s1;
    }
    return 0;
}