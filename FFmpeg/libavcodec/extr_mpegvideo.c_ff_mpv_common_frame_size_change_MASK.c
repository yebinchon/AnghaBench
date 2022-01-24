#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int i ;
struct TYPE_14__ {int slice_context_count; scalar_t__ codec_id; int mb_height; int height; int start_mb_y; int end_mb_y; struct TYPE_14__** thread_context; scalar_t__ width; int /*<<< orphan*/  avctx; int /*<<< orphan*/  progressive_sequence; int /*<<< orphan*/ * current_picture_ptr; int /*<<< orphan*/  next_picture_ptr; int /*<<< orphan*/  last_picture_ptr; TYPE_1__* picture; int /*<<< orphan*/  context_initialized; } ;
struct TYPE_13__ {int needs_realloc; } ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_PICTURE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 

int FUNC10(MpegEncContext *s)
{
    int i, err = 0;

    if (!s->context_initialized)
        return FUNC0(EINVAL);

    if (s->slice_context_count > 1) {
        for (i = 0; i < s->slice_context_count; i++) {
            FUNC6(s->thread_context[i]);
        }
        for (i = 1; i < s->slice_context_count; i++) {
            FUNC1(&s->thread_context[i]);
        }
    } else
        FUNC6(s);

    FUNC5(s);

    if (s->picture)
        for (i = 0; i < MAX_PICTURE_COUNT; i++) {
                s->picture[i].needs_realloc = 1;
        }

    s->last_picture_ptr         =
    s->next_picture_ptr         =
    *(s->current_picture_ptr      = NULL);

    // init
    if (s->codec_id == AV_CODEC_ID_MPEG2VIDEO && !s->progressive_sequence)
        s->mb_height = (s->height + 31) / 32 * 2;
    else
        s->mb_height = (s->height + 15) / 16;

    if ((s->width || s->height) &&
        (err = FUNC2(s->width, s->height, 0, s->avctx)) < 0)
        goto fail;

    if ((err = FUNC7(s)))
        goto fail;

    FUNC9(s->thread_context, 0, sizeof(s->thread_context));
    s->thread_context[0]   = s;

    if (s->width && s->height) {
        int nb_slices = s->slice_context_count;
        if (nb_slices > 1) {
            for (i = 0; i < nb_slices; i++) {
                if (i) {
                    s->thread_context[i] = FUNC3(s, sizeof(MpegEncContext));
                    if (!s->thread_context[i]) {
                        err = FUNC0(ENOMEM);
                        goto fail;
                    }
                }
                if ((err = FUNC8(s->thread_context[i])) < 0)
                    goto fail;
                s->thread_context[i]->start_mb_y =
                    (s->mb_height * (i) + nb_slices / 2) / nb_slices;
                s->thread_context[i]->end_mb_y   =
                    (s->mb_height * (i + 1) + nb_slices / 2) / nb_slices;
            }
        } else {
            err = FUNC8(s);
            if (err < 0)
                goto fail;
            s->start_mb_y = 0;
            s->end_mb_y   = s->mb_height;
        }
        s->slice_context_count = nb_slices;
    }

    return 0;
 fail:
    FUNC4(s);
    return err;
}