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
struct TYPE_6__ {double* coeffs; } ;
struct TYPE_5__ {int /*<<< orphan*/  lfg; } ;
typedef  TYPE_1__ ATRAC9Context ;
typedef  TYPE_2__ ATRAC9ChannelData ;

/* Variables and functions */
 float FUNC0 (double) ; 
 float FUNC1 (float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double*) ; 

__attribute__((used)) static inline void FUNC3(ATRAC9Context *s, ATRAC9ChannelData *c,
                                   int start, int count)
{
    float maxval = 0.0f;
    for (int i = 0; i < count; i += 2) {
        double tmp[2];
        FUNC2(&s->lfg, tmp);
        c->coeffs[start + i + 0] = tmp[0];
        c->coeffs[start + i + 1] = tmp[1];
        maxval = FUNC1(FUNC1(FUNC0(tmp[0]), FUNC0(tmp[1])), maxval);
    }
    /* Normalize */
    for (int i = 0; i < count; i++)
        c->coeffs[start + i] /= maxval;
}