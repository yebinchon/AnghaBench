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
struct TYPE_3__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline void FUNC3(int16_t *dst, int coef, int esc, GetBitContext *gb, VLC* vlc, int q)
{
    if(coef){
        if(coef == esc){
            coef = FUNC2(gb, vlc->table, 9, 2);
            if(coef > 23){
                coef -= 23;
                coef = 22 + ((1 << coef) | FUNC0(gb, coef));
            }
            coef += esc;
        }
        if(FUNC1(gb))
            coef = -coef;
        *dst = (coef*q + 8) >> 4;
    }
}