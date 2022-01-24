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
struct TYPE_3__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int* ff_dca_joint_scale_factors ; 
 int /*<<< orphan*/  ff_dca_vlc_scale_factor ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC4(DCACoreDecoder *s, int sel)
{
    int scale_index;

    // Absolute value was encoded even when Huffman code was used
    if (sel < 5)
        scale_index = FUNC2(&s->gb, &ff_dca_vlc_scale_factor, sel);
    else
        scale_index = FUNC3(&s->gb, sel + 1);

    // Bias by 64
    scale_index += 64;

    // Look up joint scale factor
    if ((unsigned int)scale_index >= FUNC0(ff_dca_joint_scale_factors)) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Invalid joint scale factor index\n");
        return AVERROR_INVALIDDATA;
    }

    return ff_dca_joint_scale_factors[scale_index];
}