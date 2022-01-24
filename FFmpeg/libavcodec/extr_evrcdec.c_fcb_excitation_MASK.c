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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {scalar_t__ bitrate; } ;
typedef  TYPE_1__ EVRCContext ;

/* Variables and functions */
 scalar_t__ RATE_FULL ; 
 float FUNC0 (float,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,float*) ; 

__attribute__((used)) static void FUNC3(EVRCContext *e, const uint16_t *codebook,
                           float *excitation, float pitch_gain,
                           int pitch_lag, int subframe_size)
{
    int i;

    if (e->bitrate == RATE_FULL)
        FUNC2(codebook, excitation);
    else
        FUNC1(*codebook, excitation);

    pitch_gain = FUNC0(pitch_gain, 0.2, 0.9);

    for (i = pitch_lag; i < subframe_size; i++)
        excitation[i] += pitch_gain * excitation[i - pitch_lag];
}