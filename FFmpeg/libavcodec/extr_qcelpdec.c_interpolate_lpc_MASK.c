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
struct TYPE_3__ {scalar_t__ bitrate; float const* prev_lspf; } ;
typedef  TYPE_1__ QCELPContext ;

/* Variables and functions */
 scalar_t__ I_F_Q ; 
 scalar_t__ RATE_OCTAVE ; 
 scalar_t__ RATE_QUARTER ; 
 scalar_t__ SILENCE ; 
 int /*<<< orphan*/  FUNC0 (float*,float const*,float const*,float,double,int) ; 
 int /*<<< orphan*/  FUNC1 (float const*,float*) ; 

__attribute__((used)) static void FUNC2(QCELPContext *q, const float *curr_lspf,
                            float *lpc, const int subframe_num)
{
    float interpolated_lspf[10];
    float weight;

    if (q->bitrate >= RATE_QUARTER)
        weight = 0.25 * (subframe_num + 1);
    else if (q->bitrate == RATE_OCTAVE && !subframe_num)
        weight = 0.625;
    else
        weight = 1.0;

    if (weight != 1.0) {
        FUNC0(interpolated_lspf, curr_lspf, q->prev_lspf,
                                weight, 1.0 - weight, 10);
        FUNC1(interpolated_lspf, lpc);
    } else if (q->bitrate >= RATE_QUARTER ||
               (q->bitrate == I_F_Q && !subframe_num))
        FUNC1(curr_lspf, lpc);
    else if (q->bitrate == SILENCE && !subframe_num)
        FUNC1(q->prev_lspf, lpc);
}