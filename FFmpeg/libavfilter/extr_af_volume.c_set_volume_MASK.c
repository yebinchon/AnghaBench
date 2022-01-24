#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int volume; int* var_values; scalar_t__ eval_mode; size_t precision; int volume_i; int /*<<< orphan*/  volume_pexpr; } ;
typedef  TYPE_1__ VolumeContext ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ EVAL_MODE_ONCE ; 
 size_t PRECISION_FIXED ; 
 size_t VAR_N ; 
 size_t VAR_PTS ; 
 size_t VAR_T ; 
 size_t VAR_VOLUME ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 double FUNC4 (double) ; 
 int /*<<< orphan*/ * precision_str ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    VolumeContext *vol = ctx->priv;

    vol->volume = FUNC1(vol->volume_pexpr, vol->var_values, NULL);
    if (FUNC3(vol->volume)) {
        if (vol->eval_mode == EVAL_MODE_ONCE) {
            FUNC2(ctx, AV_LOG_ERROR, "Invalid value NaN for volume\n");
            return FUNC0(EINVAL);
        } else {
            FUNC2(ctx, AV_LOG_WARNING, "Invalid value NaN for volume, setting to 0\n");
            vol->volume = 0;
        }
    }
    vol->var_values[VAR_VOLUME] = vol->volume;

    FUNC2(ctx, AV_LOG_VERBOSE, "n:%f t:%f pts:%f precision:%s ",
           vol->var_values[VAR_N], vol->var_values[VAR_T], vol->var_values[VAR_PTS],
           precision_str[vol->precision]);

    if (vol->precision == PRECISION_FIXED) {
        vol->volume_i = (int)(vol->volume * 256 + 0.5);
        vol->volume   = vol->volume_i / 256.0;
        FUNC2(ctx, AV_LOG_VERBOSE, "volume_i:%d/255 ", vol->volume_i);
    }
    FUNC2(ctx, AV_LOG_VERBOSE, "volume:%f volume_dB:%f\n",
           vol->volume, 20.0*FUNC4(vol->volume));

    FUNC5(vol);
    return 0;
}