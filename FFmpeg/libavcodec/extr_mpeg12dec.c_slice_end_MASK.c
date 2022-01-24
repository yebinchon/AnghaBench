#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  f; } ;
struct TYPE_17__ {TYPE_1__* hwaccel; } ;
struct TYPE_16__ {int active_thread_type; TYPE_3__* priv_data; } ;
struct TYPE_14__ {scalar_t__ pict_type; TYPE_8__* last_picture_ptr; int /*<<< orphan*/  picture_number; TYPE_8__* current_picture_ptr; scalar_t__ low_delay; int /*<<< orphan*/  er; int /*<<< orphan*/  first_field; TYPE_5__* avctx; } ;
struct TYPE_15__ {int /*<<< orphan*/  first_slice; int /*<<< orphan*/  mpeg_enc_ctx_allocated; TYPE_2__ mpeg_enc_ctx; } ;
struct TYPE_13__ {int (* end_frame ) (TYPE_5__*) ;} ;
typedef  TYPE_2__ MpegEncContext ;
typedef  TYPE_3__ Mpeg1Context ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_B ; 
 int /*<<< orphan*/  FF_QSCALE_TYPE_MPEG2 ; 
 int FF_THREAD_FRAME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, AVFrame *pict)
{
    Mpeg1Context *s1  = avctx->priv_data;
    MpegEncContext *s = &s1->mpeg_enc_ctx;

    if (!s1->mpeg_enc_ctx_allocated || !s->current_picture_ptr)
        return 0;

    if (s->avctx->hwaccel) {
        int ret = s->avctx->hwaccel->end_frame(s->avctx);
        if (ret < 0) {
            FUNC1(avctx, AV_LOG_ERROR,
                   "hardware accelerator failed to decode picture\n");
            return ret;
        }
    }

    /* end of slice reached */
    if (/* s->mb_y << field_pic == s->mb_height && */ !s->first_field && !s1->first_slice) {
        /* end of image */

        FUNC2(&s->er);

        FUNC4(s);

        if (s->pict_type == AV_PICTURE_TYPE_B || s->low_delay) {
            int ret = FUNC0(pict, s->current_picture_ptr->f);
            if (ret < 0)
                return ret;
            FUNC5(s, s->current_picture_ptr, pict);
            FUNC3(s, pict, s->current_picture_ptr, FF_QSCALE_TYPE_MPEG2);
        } else {
            if (avctx->active_thread_type & FF_THREAD_FRAME)
                s->picture_number++;
            /* latency of 1 frame for I- and P-frames */
            /* XXX: use another variable than picture_number */
            if (s->last_picture_ptr) {
                int ret = FUNC0(pict, s->last_picture_ptr->f);
                if (ret < 0)
                    return ret;
                FUNC5(s, s->last_picture_ptr, pict);
                FUNC3(s, pict, s->last_picture_ptr, FF_QSCALE_TYPE_MPEG2);
            }
        }

        return 1;
    } else {
        return 0;
    }
}