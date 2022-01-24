#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int err_recognition; } ;
struct TYPE_8__ {int frame_size; TYPE_6__* avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  gb_in; scalar_t__ x96_pos; scalar_t__ xxch_pos; scalar_t__ xch_pos; scalar_t__ ext_audio_mask; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  HEADER_CORE ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 

int FUNC7(DCACoreDecoder *s, uint8_t *data, int size)
{
    int ret;

    s->ext_audio_mask = 0;
    s->xch_pos = s->xxch_pos = s->x96_pos = 0;

    if ((ret = FUNC3(&s->gb, data, size)) < 0)
        return ret;
    s->gb_in = s->gb;

    if ((ret = FUNC5(s)) < 0)
        return ret;
    if ((ret = FUNC0(s)) < 0)
        return ret;
    if ((ret = FUNC4(s, HEADER_CORE, 0)) < 0)
        return ret;
    if ((ret = FUNC6(s)) < 0)
        return ret;

    // Workaround for DTS in WAV
    if (s->frame_size > size)
        s->frame_size = size;

    if (FUNC2(&s->gb, s->frame_size * 8)) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Read past end of core frame\n");
        if (s->avctx->err_recognition & AV_EF_EXPLODE)
            return AVERROR_INVALIDDATA;
    }

    return 0;
}