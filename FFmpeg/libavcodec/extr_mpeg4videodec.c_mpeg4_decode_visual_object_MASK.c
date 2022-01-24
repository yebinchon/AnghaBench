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
struct TYPE_5__ {TYPE_1__* avctx; } ;
struct TYPE_4__ {void* colorspace; void* color_trc; void* color_primaries; int /*<<< orphan*/  color_range; } ;
typedef  TYPE_2__ MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVCOL_RANGE_JPEG ; 
 int /*<<< orphan*/  AVCOL_RANGE_MPEG ; 
 int VOT_STILL_TEXTURE_ID ; 
 int VOT_VIDEO_ID ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(MpegEncContext *s, GetBitContext *gb)
{
    int visual_object_type;
    int is_visual_object_identifier = FUNC1(gb);

    if (is_visual_object_identifier) {
        FUNC2(gb, 4+3);
    }
    visual_object_type = FUNC0(gb, 4);

    if (visual_object_type == VOT_VIDEO_ID ||
        visual_object_type == VOT_STILL_TEXTURE_ID) {
        int video_signal_type = FUNC1(gb);
        if (video_signal_type) {
            int video_range, color_description;
            FUNC2(gb, 3); // video_format
            video_range = FUNC1(gb);
            color_description = FUNC1(gb);

            s->avctx->color_range = video_range ? AVCOL_RANGE_JPEG : AVCOL_RANGE_MPEG;

            if (color_description) {
                s->avctx->color_primaries = FUNC0(gb, 8);
                s->avctx->color_trc       = FUNC0(gb, 8);
                s->avctx->colorspace      = FUNC0(gb, 8);
            }
        }
    }

    return 0;
}