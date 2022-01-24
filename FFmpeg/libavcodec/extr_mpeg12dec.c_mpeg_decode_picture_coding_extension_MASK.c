#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  idct_permutation; } ;
struct TYPE_9__ {TYPE_2__* f; } ;
struct TYPE_10__ {int** mpeg_f_code; scalar_t__ pict_type; void* progressive_frame; int /*<<< orphan*/  avctx; void* frame_pred_frame_dct; void* alternate_scan; void* intra_vlc_format; void* concealment_motion_vectors; void* repeat_first_field; void* top_field_first; void* picture_structure; void* intra_dc_precision; int /*<<< orphan*/  intra_scantable; TYPE_1__ idsp; int /*<<< orphan*/  inter_scantable; int /*<<< orphan*/  gb; void* chroma_420_type; void* q_scale_type; TYPE_3__ current_picture; scalar_t__* full_pel; } ;
struct TYPE_11__ {scalar_t__ mpeg_enc_ctx_allocated; TYPE_4__ mpeg_enc_ctx; } ;
struct TYPE_8__ {scalar_t__ pict_type; int key_frame; } ;
typedef  TYPE_4__ MpegEncContext ;
typedef  TYPE_5__ Mpeg1Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_B ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ff_alternate_vertical_scan ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_zigzag_direct ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(Mpeg1Context *s1)
{
    MpegEncContext *s = &s1->mpeg_enc_ctx;

    s->full_pel[0]       = s->full_pel[1] = 0;
    s->mpeg_f_code[0][0] = FUNC3(&s->gb, 4);
    s->mpeg_f_code[0][1] = FUNC3(&s->gb, 4);
    s->mpeg_f_code[1][0] = FUNC3(&s->gb, 4);
    s->mpeg_f_code[1][1] = FUNC3(&s->gb, 4);
    if (!s->pict_type && s1->mpeg_enc_ctx_allocated) {
        FUNC0(s->avctx, AV_LOG_ERROR,
               "Missing picture start code, guessing missing values\n");
        if (s->mpeg_f_code[1][0] == 15 && s->mpeg_f_code[1][1] == 15) {
            if (s->mpeg_f_code[0][0] == 15 && s->mpeg_f_code[0][1] == 15)
                s->pict_type = AV_PICTURE_TYPE_I;
            else
                s->pict_type = AV_PICTURE_TYPE_P;
        } else
            s->pict_type = AV_PICTURE_TYPE_B;
        s->current_picture.f->pict_type = s->pict_type;
        s->current_picture.f->key_frame = s->pict_type == AV_PICTURE_TYPE_I;
    }
    s->mpeg_f_code[0][0] += !s->mpeg_f_code[0][0];
    s->mpeg_f_code[0][1] += !s->mpeg_f_code[0][1];
    s->mpeg_f_code[1][0] += !s->mpeg_f_code[1][0];
    s->mpeg_f_code[1][1] += !s->mpeg_f_code[1][1];

    s->intra_dc_precision         = FUNC3(&s->gb, 2);
    s->picture_structure          = FUNC3(&s->gb, 2);
    s->top_field_first            = FUNC4(&s->gb);
    s->frame_pred_frame_dct       = FUNC4(&s->gb);
    s->concealment_motion_vectors = FUNC4(&s->gb);
    s->q_scale_type               = FUNC4(&s->gb);
    s->intra_vlc_format           = FUNC4(&s->gb);
    s->alternate_scan             = FUNC4(&s->gb);
    s->repeat_first_field         = FUNC4(&s->gb);
    s->chroma_420_type            = FUNC4(&s->gb);
    s->progressive_frame          = FUNC4(&s->gb);

    if (s->alternate_scan) {
        FUNC2(s->idsp.idct_permutation, &s->inter_scantable, ff_alternate_vertical_scan);
        FUNC2(s->idsp.idct_permutation, &s->intra_scantable, ff_alternate_vertical_scan);
    } else {
        FUNC2(s->idsp.idct_permutation, &s->inter_scantable, ff_zigzag_direct);
        FUNC2(s->idsp.idct_permutation, &s->intra_scantable, ff_zigzag_direct);
    }

    /* composite display not parsed */
    FUNC1(s->avctx, "intra_dc_precision=%d\n", s->intra_dc_precision);
    FUNC1(s->avctx, "picture_structure=%d\n", s->picture_structure);
    FUNC1(s->avctx, "top field first=%d\n", s->top_field_first);
    FUNC1(s->avctx, "repeat first field=%d\n", s->repeat_first_field);
    FUNC1(s->avctx, "conceal=%d\n", s->concealment_motion_vectors);
    FUNC1(s->avctx, "intra_vlc_format=%d\n", s->intra_vlc_format);
    FUNC1(s->avctx, "alternate_scan=%d\n", s->alternate_scan);
    FUNC1(s->avctx, "frame_pred_frame_dct=%d\n", s->frame_pred_frame_dct);
    FUNC1(s->avctx, "progressive_frame=%d\n", s->progressive_frame);
}