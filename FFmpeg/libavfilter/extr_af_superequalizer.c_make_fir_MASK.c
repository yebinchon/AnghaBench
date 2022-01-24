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
struct TYPE_4__ {int winlen; int tabsize; int* irest; float* ires; int /*<<< orphan*/  rdft; } ;
typedef  TYPE_1__ SuperEqualizerContext ;
typedef  int /*<<< orphan*/  EqParameter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ *,float) ; 
 int FUNC3 (TYPE_1__*,int,int const) ; 

__attribute__((used)) static void FUNC4(SuperEqualizerContext *s, float *lbc, float *rbc, EqParameter *param, float fs)
{
    const int winlen = s->winlen;
    const int tabsize = s->tabsize;
    float *nires;
    int i;

    if (fs <= 0)
        return;

    FUNC2(lbc, param, fs);
    for (i = 0; i < winlen; i++)
        s->irest[i] = FUNC1(i - winlen / 2, param, fs) * FUNC3(s, i - winlen / 2, winlen);
    for (; i < tabsize; i++)
        s->irest[i] = 0;

    FUNC0(s->rdft, s->irest);
    nires = s->ires;
    for (i = 0; i < tabsize; i++)
        nires[i] = s->irest[i];
}