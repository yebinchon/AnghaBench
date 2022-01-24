#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* f; } ;
struct TYPE_14__ {int /*<<< orphan*/  encoding_error; int /*<<< orphan*/  shared; int /*<<< orphan*/  reference; int /*<<< orphan*/  needs_realloc; int /*<<< orphan*/  b_frame_score; int /*<<< orphan*/  mc_mb_var_sum; int /*<<< orphan*/  mb_var_sum; int /*<<< orphan*/  field_picture; TYPE_10__* hwaccel_priv_buf; scalar_t__ hwaccel_picture_private; TYPE_5__ tf; TYPE_1__* f; } ;
struct TYPE_13__ {int* buf; } ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef  TYPE_2__ Picture ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_10__* FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC4 (TYPE_5__*,TYPE_5__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(AVCodecContext *avctx, Picture *dst, Picture *src)
{
    int ret;

    FUNC1(!dst->f->buf[0]);
    FUNC1(src->f->buf[0]);

    src->tf.f = src->f;
    dst->tf.f = dst->f;
    ret = FUNC4(&dst->tf, &src->tf);
    if (ret < 0)
        goto fail;

    ret = FUNC5(dst, src);
    if (ret < 0)
        goto fail;

    if (src->hwaccel_picture_private) {
        dst->hwaccel_priv_buf = FUNC2(src->hwaccel_priv_buf);
        if (!dst->hwaccel_priv_buf) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        dst->hwaccel_picture_private = dst->hwaccel_priv_buf->data;
    }

    dst->field_picture           = src->field_picture;
    dst->mb_var_sum              = src->mb_var_sum;
    dst->mc_mb_var_sum           = src->mc_mb_var_sum;
    dst->b_frame_score           = src->b_frame_score;
    dst->needs_realloc           = src->needs_realloc;
    dst->reference               = src->reference;
    dst->shared                  = src->shared;

    FUNC6(dst->encoding_error, src->encoding_error,
           sizeof(dst->encoding_error));

    return 0;
fail:
    FUNC3(avctx, dst);
    return ret;
}