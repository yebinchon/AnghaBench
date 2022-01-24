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
struct TYPE_3__ {int interlaced_dct; int /*<<< orphan*/  pb; int /*<<< orphan*/  frame_pred_frame_dct; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC1(MpegEncContext *s, int n, int bits,
                                int has_mv, int field_motion)
{
    FUNC0(&s->pb, n, bits);
    if (!s->frame_pred_frame_dct) {
        if (has_mv)
            /* motion_type: frame/field */
            FUNC0(&s->pb, 2, 2 - field_motion);
        FUNC0(&s->pb, 1, s->interlaced_dct);
    }
}