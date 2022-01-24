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
typedef  int /*<<< orphan*/  kissf_fft_cpx ;
typedef  TYPE_1__* kissf_fft_cfg ;
struct TYPE_3__ {int /*<<< orphan*/ * twiddles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
        kissf_fft_cpx * Fout,
        const size_t fstride,
        const kissf_fft_cfg st,
        int m
        )
{
    kissf_fft_cpx * Fout2;
    kissf_fft_cpx * tw1 = st->twiddles;
    kissf_fft_cpx t;
    Fout2 = Fout + m;
    do{
        FUNC1(*Fout,2); FUNC1(*Fout2,2);

        FUNC2 (t,  *Fout2 , *tw1);
        tw1 += fstride;
        FUNC3( *Fout2 ,  *Fout , t );
        FUNC0( *Fout ,  t );
        ++Fout2;
        ++Fout;
    }while (--m);
}