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
struct TYPE_3__ {int m; int inv; int* revtab; } ;
typedef  TYPE_1__ AVTXContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC1 (int const) ; 
 int const FUNC2 (int,int const,int const) ; 

int FUNC3(AVTXContext *s)
{
    const int m = s->m, inv = s->inv;

    if (!(s->revtab = FUNC1(m*sizeof(*s->revtab))))
        return FUNC0(ENOMEM);

    /* Default */
    for (int i = 0; i < m; i++) {
        int k = -FUNC2(i, m, inv) & (m - 1);
        s->revtab[k] = i;
    }

    return 0;
}