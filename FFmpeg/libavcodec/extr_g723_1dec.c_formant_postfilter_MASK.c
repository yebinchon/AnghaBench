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
typedef  int int64_t ;
typedef  int int16_t ;
struct TYPE_4__ {int* fir_mem; int* iir_mem; int reflection_coef; } ;
typedef  TYPE_1__ G723_1_ChannelContext ;

/* Variables and functions */
 int FRAME_LEN ; 
 int LPC_ORDER ; 
 int SUBFRAMES ; 
 int SUBFRAME_LEN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int*,int*,int) ; 
 int FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int** postfilter_tbl ; 

__attribute__((used)) static void FUNC7(G723_1_ChannelContext *p, int16_t *lpc,
                               int16_t *buf, int16_t *dst)
{
    int16_t filter_coef[2][LPC_ORDER];
    int filter_signal[LPC_ORDER + FRAME_LEN], *signal_ptr;
    int i, j, k;

    FUNC6(buf, p->fir_mem, LPC_ORDER * sizeof(*buf));
    FUNC6(filter_signal, p->iir_mem, LPC_ORDER * sizeof(*filter_signal));

    for (i = LPC_ORDER, j = 0; j < SUBFRAMES; i += SUBFRAME_LEN, j++) {
        for (k = 0; k < LPC_ORDER; k++) {
            filter_coef[0][k] = (-lpc[k] * postfilter_tbl[0][k] +
                                 (1 << 14)) >> 15;
            filter_coef[1][k] = (-lpc[k] * postfilter_tbl[1][k] +
                                 (1 << 14)) >> 15;
        }
        FUNC5(filter_coef[0], filter_coef[1], buf + i, filter_signal + i, 1);
        lpc += LPC_ORDER;
    }

    FUNC6(p->fir_mem, buf + FRAME_LEN, LPC_ORDER * sizeof(int16_t));
    FUNC6(p->iir_mem, filter_signal + FRAME_LEN, LPC_ORDER * sizeof(int));

    buf += LPC_ORDER;
    signal_ptr = filter_signal + LPC_ORDER;
    for (i = 0; i < SUBFRAMES; i++) {
        int temp;
        int auto_corr[2];
        int scale, energy;

        /* Normalize */
        scale = FUNC3(dst, buf, SUBFRAME_LEN);

        /* Compute auto correlation coefficients */
        auto_corr[0] = FUNC2(dst, dst + 1, SUBFRAME_LEN - 1);
        auto_corr[1] = FUNC2(dst, dst,     SUBFRAME_LEN);

        /* Compute reflection coefficient */
        temp = auto_corr[1] >> 16;
        if (temp) {
            temp = (auto_corr[0] >> 2) / temp;
        }
        p->reflection_coef = (3 * p->reflection_coef + temp + 2) >> 2;
        temp = -p->reflection_coef >> 1 & ~3;

        /* Compensation filter */
        for (j = 0; j < SUBFRAME_LEN; j++) {
            dst[j] = FUNC1(signal_ptr[j],
                                   (signal_ptr[j - 1] >> 16) * temp) >> 16;
        }

        /* Compute normalized signal energy */
        temp = 2 * scale + 4;
        if (temp < 0) {
            energy = FUNC0((int64_t)auto_corr[1] << -temp);
        } else
            energy = auto_corr[1] >> temp;

        FUNC4(p, dst, energy);

        buf        += SUBFRAME_LEN;
        signal_ptr += SUBFRAME_LEN;
        dst        += SUBFRAME_LEN;
    }
}