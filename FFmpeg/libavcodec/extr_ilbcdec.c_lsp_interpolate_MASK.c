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
typedef  int int16_t ;
struct TYPE_3__ {int mode; int* lsfdeqold; int nsub; } ;
typedef  TYPE_1__ ILBCContext ;

/* Variables and functions */
 int /*<<< orphan*/  LPC_FILTERORDER ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kLpcChirpSyntDenum ; 
 int /*<<< orphan*/ * lsf_weight_20ms ; 
 int /*<<< orphan*/ * lsf_weight_30ms ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

__attribute__((used)) static void FUNC3(int16_t *syntdenum, int16_t *weightdenum,
                            int16_t *lsfdeq, int16_t length,
                            ILBCContext *s)
{
    int16_t lp[LPC_FILTERORDER + 1], *lsfdeq2;
    int i, pos, lp_length;

    lsfdeq2 = lsfdeq + length;
    lp_length = length + 1;

    if (s->mode == 30) {
        FUNC1(lp, (*s).lsfdeqold, lsfdeq, lsf_weight_30ms[0], length);
        FUNC2(syntdenum, lp, lp_length * 2);
        FUNC0(weightdenum, lp, kLpcChirpSyntDenum, lp_length);

        pos = lp_length;
        for (i = 1; i < 6; i++) {
            FUNC1(lp, lsfdeq, lsfdeq2,
                                                 lsf_weight_30ms[i],
                                                 length);
            FUNC2(syntdenum + pos, lp, lp_length * 2);
            FUNC0(weightdenum + pos, lp, kLpcChirpSyntDenum, lp_length);
            pos += lp_length;
        }
    } else {
        pos = 0;
        for (i = 0; i < s->nsub; i++) {
            FUNC1(lp, s->lsfdeqold, lsfdeq,
                                    lsf_weight_20ms[i], length);
            FUNC2(syntdenum + pos, lp, lp_length * 2);
            FUNC0(weightdenum + pos, lp, kLpcChirpSyntDenum, lp_length);
            pos += lp_length;
        }
    }

    if (s->mode == 30) {
        FUNC2(s->lsfdeqold, lsfdeq2, length * 2);
    } else {
        FUNC2(s->lsfdeqold, lsfdeq, length * 2);
    }
}