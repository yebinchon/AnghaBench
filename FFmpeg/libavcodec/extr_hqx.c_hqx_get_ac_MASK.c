#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lut_bits; int extra_bits; TYPE_1__* lut; } ;
struct TYPE_4__ {int bits; int lev; int run; } ;
typedef  TYPE_2__ HQXAC ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(GetBitContext *gb, const HQXAC *ac,
                              int *run, int *lev)
{
    int val;

    val = FUNC0(gb, ac->lut_bits);
    if (ac->lut[val].bits == -1) {
        GetBitContext gb2 = *gb;
        FUNC1(&gb2, ac->lut_bits);
        val = ac->lut[val].lev + FUNC0(&gb2, ac->extra_bits);
    }
    *run = ac->lut[val].run;
    *lev = ac->lut[val].lev;
    FUNC1(gb, ac->lut[val].bits);
}