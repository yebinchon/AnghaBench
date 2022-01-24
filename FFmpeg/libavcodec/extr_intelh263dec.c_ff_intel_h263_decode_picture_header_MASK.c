#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int num; int den; } ;
struct TYPE_9__ {TYPE_4__ sample_aspect_ratio; int /*<<< orphan*/  lowres; } ;
struct TYPE_7__ {int picture_number; int h263_long_vectors; int obmc; int unrestricted_mv; int pb_frame; int loop_filter; int chroma_qscale; int qscale; int f_code; int /*<<< orphan*/  c_dc_scale_table; int /*<<< orphan*/  y_dc_scale_table; int /*<<< orphan*/  gb; TYPE_5__* avctx; void* height; void* width; scalar_t__ pict_type; scalar_t__ h263_plus; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 int FRAME_SKIPPED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,char*) ; 
 void*** ff_h263_format ; 
 TYPE_4__* ff_h263_pixel_aspect ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ff_mpeg1_dc_scale_table ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(MpegEncContext *s)
{
    int format;

    if (FUNC5(&s->gb) == 64) { /* special dummy frames */
        return FRAME_SKIPPED;
    }

    /* picture header */
    if (FUNC6(&s->gb, 22) != 0x20) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Bad picture start code\n");
        return -1;
    }
    s->picture_number = FUNC3(&s->gb, 8); /* picture timestamp */

    if (FUNC1(s->avctx, &s->gb, "after picture_number") != 1) {
        return -1;      /* marker */
    }
    if (FUNC4(&s->gb) != 0) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Bad H.263 id\n");
        return -1;      /* H.263 id */
    }
    FUNC9(&s->gb);         /* split screen off */
    FUNC9(&s->gb);         /* camera  off */
    FUNC9(&s->gb);         /* freeze picture release off */

    format = FUNC3(&s->gb, 3);
    if (format == 0 || format == 6) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Intel H.263 free format not supported\n");
        return -1;
    }
    s->h263_plus = 0;

    s->pict_type = AV_PICTURE_TYPE_I + FUNC4(&s->gb);

    s->h263_long_vectors = FUNC4(&s->gb);

    if (FUNC4(&s->gb) != 0) {
        FUNC0(s->avctx, AV_LOG_ERROR, "SAC not supported\n");
        return -1;      /* SAC: off */
    }
    s->obmc= FUNC4(&s->gb);
    s->unrestricted_mv = s->obmc || s->h263_long_vectors;
    s->pb_frame = FUNC4(&s->gb);

    if (format < 6) {
        s->width = ff_h263_format[format][0];
        s->height = ff_h263_format[format][1];
        s->avctx->sample_aspect_ratio.num = 12;
        s->avctx->sample_aspect_ratio.den = 11;
    } else {
        format = FUNC3(&s->gb, 3);
        if(format == 0 || format == 7){
            FUNC0(s->avctx, AV_LOG_ERROR, "Wrong Intel H.263 format\n");
            return -1;
        }
        if(FUNC3(&s->gb, 2))
            FUNC0(s->avctx, AV_LOG_ERROR, "Bad value for reserved field\n");
        s->loop_filter = FUNC4(&s->gb) * !s->avctx->lowres;
        if(FUNC4(&s->gb))
            FUNC0(s->avctx, AV_LOG_ERROR, "Bad value for reserved field\n");
        if(FUNC4(&s->gb))
            s->pb_frame = 2;
        if(FUNC3(&s->gb, 5))
            FUNC0(s->avctx, AV_LOG_ERROR, "Bad value for reserved field\n");
        if(FUNC3(&s->gb, 5) != 1)
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid marker\n");
    }
    if(format == 6){
        int ar = FUNC3(&s->gb, 4);
        FUNC8(&s->gb, 9); // display width
        FUNC1(s->avctx, &s->gb, "in dimensions");
        FUNC8(&s->gb, 9); // display height
        if(ar == 15){
            s->avctx->sample_aspect_ratio.num = FUNC3(&s->gb, 8); // aspect ratio - width
            s->avctx->sample_aspect_ratio.den = FUNC3(&s->gb, 8); // aspect ratio - height
        } else {
            s->avctx->sample_aspect_ratio = ff_h263_pixel_aspect[ar];
        }
        if (s->avctx->sample_aspect_ratio.num == 0)
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid aspect ratio.\n");
    }

    s->chroma_qscale= s->qscale = FUNC3(&s->gb, 5);
    FUNC9(&s->gb); /* Continuous Presence Multipoint mode: off */

    if(s->pb_frame){
        FUNC8(&s->gb, 3); //temporal reference for B-frame
        FUNC8(&s->gb, 2); //dbquant
    }

    /* PEI */
    if (FUNC7(&s->gb) < 0)
        return AVERROR_INVALIDDATA;
    s->f_code = 1;

    s->y_dc_scale_table=
    s->c_dc_scale_table= ff_mpeg1_dc_scale_table;

    FUNC2(s);

    return 0;
}