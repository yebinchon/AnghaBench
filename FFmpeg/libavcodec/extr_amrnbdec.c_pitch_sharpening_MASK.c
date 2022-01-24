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
typedef  enum Mode { ____Placeholder_Mode } Mode ;
struct TYPE_6__ {int /*<<< orphan*/ * pitch_gain; int /*<<< orphan*/  beta; int /*<<< orphan*/  pitch_lag_int; } ;
struct TYPE_5__ {int /*<<< orphan*/  pitch_fac; int /*<<< orphan*/  pitch_lag; } ;
typedef  TYPE_1__ AMRFixed ;
typedef  TYPE_2__ AMRContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
 int MODE_12k2 ; 
 int MODE_4k75 ; 
 int /*<<< orphan*/  SHARP_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(AMRContext *p, int subframe, enum Mode mode,
                             AMRFixed *fixed_sparse)
{
    // The spec suggests the current pitch gain is always used, but in other
    // modes the pitch and codebook gains are jointly quantized (sec 5.8.2)
    // so the codebook gain cannot depend on the quantized pitch gain.
    if (mode == MODE_12k2)
        p->beta = FUNC0(p->pitch_gain[4], 1.0);

    fixed_sparse->pitch_lag  = p->pitch_lag_int;
    fixed_sparse->pitch_fac  = p->beta;

    // Save pitch sharpening factor for the next subframe
    // MODE_4k75 only updates on the 2nd and 4th subframes - this follows from
    // the fact that the gains for two subframes are jointly quantized.
    if (mode != MODE_4k75 || subframe & 1)
        p->beta = FUNC1(p->pitch_gain[4], 0.0, SHARP_MAX);
}