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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int profile; } ;
struct TYPE_5__ {int key_frame; int /*<<< orphan*/  pict_type; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVCodecParserContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(AVCodecParserContext *ctx,
                 AVCodecContext *avctx,
                 const uint8_t **out_data, int *out_size,
                 const uint8_t *data, int size)
{
    GetBitContext gb;
    int res, profile, keyframe;

    *out_data = data;
    *out_size = size;

    if (!size || (res = FUNC2(&gb, data, size)) < 0)
        return size; // parsers can't return errors
    FUNC0(&gb, 2); // frame marker
    profile  = FUNC1(&gb);
    profile |= FUNC1(&gb) << 1;
    if (profile == 3) profile += FUNC1(&gb);
    if (profile > 3)
        return size;

    avctx->profile = profile;

    if (FUNC1(&gb)) {
        keyframe = 0;
    } else {
        keyframe  = !FUNC1(&gb);
    }

    if (!keyframe) {
        ctx->pict_type = AV_PICTURE_TYPE_P;
        ctx->key_frame = 0;
    } else {
        ctx->pict_type = AV_PICTURE_TYPE_I;
        ctx->key_frame = 1;
    }

    return size;
}