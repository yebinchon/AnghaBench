#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_24__ ;
typedef  struct TYPE_31__   TYPE_23__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_14__ ;

/* Type definitions */
struct TYPE_39__ {int /*<<< orphan*/  frame_num; int /*<<< orphan*/  prev_frame_num; int /*<<< orphan*/  frame_num_offset; int /*<<< orphan*/  prev_frame_num_offset; int /*<<< orphan*/  poc_lsb; int /*<<< orphan*/  prev_poc_lsb; int /*<<< orphan*/  poc_msb; int /*<<< orphan*/  prev_poc_msb; } ;
struct TYPE_38__ {TYPE_6__* priv_data; } ;
struct TYPE_34__ {TYPE_24__* buf_ref; } ;
struct TYPE_35__ {TYPE_3__ a53_caption; } ;
struct TYPE_29__ {TYPE_2__* f; } ;
struct TYPE_30__ {TYPE_24__* sps_ref; TYPE_5__ const* sps; TYPE_24__* pps_ref; int /*<<< orphan*/  const* pps; TYPE_24__** pps_list; TYPE_24__** sps_list; } ;
struct TYPE_37__ {int context_initialized; scalar_t__ width; scalar_t__ height; scalar_t__ mb_width; scalar_t__ mb_height; int /*<<< orphan*/  recovery_frame; TYPE_8__ poc; int /*<<< orphan*/  droppable; int /*<<< orphan*/  cur_pic_ptr; TYPE_4__ sei; int /*<<< orphan*/  frame_recovered; TYPE_8__* delayed_pic; TYPE_8__* long_ref; TYPE_8__* short_ref; int /*<<< orphan*/  short_ref_count; int /*<<< orphan*/  long_ref_count; int /*<<< orphan*/  explicit_ref_marking; int /*<<< orphan*/  mmco_reset; int /*<<< orphan*/  nb_mmco; TYPE_8__* mmco; int /*<<< orphan*/  next_outputed_poc; int /*<<< orphan*/  next_output_pic; TYPE_8__* last_pocs; int /*<<< orphan*/  nal_length_size; int /*<<< orphan*/  is_avc; int /*<<< orphan*/  workaround_bugs; int /*<<< orphan*/  enable_er; TYPE_14__ cur_pic; TYPE_14__* DPB; int /*<<< orphan*/  mb_aff_frame; int /*<<< orphan*/  picture_structure; int /*<<< orphan*/  first_field; int /*<<< orphan*/  coded_picture_number; int /*<<< orphan*/  height_from_caller; int /*<<< orphan*/  width_from_caller; TYPE_23__* avctx; TYPE_8__* block_offset; int /*<<< orphan*/  x264_build; int /*<<< orphan*/  b_stride; int /*<<< orphan*/  mb_stride; int /*<<< orphan*/  mb_num; TYPE_1__ ps; } ;
struct TYPE_36__ {scalar_t__ bit_depth_luma; scalar_t__ chroma_format_idc; scalar_t__ colorspace; } ;
struct TYPE_33__ {scalar_t__* buf; } ;
struct TYPE_32__ {scalar_t__ data; } ;
struct TYPE_31__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  coded_width; int /*<<< orphan*/  coded_height; } ;
typedef  TYPE_5__ SPS ;
typedef  int /*<<< orphan*/  PPS ;
typedef  TYPE_6__ H264Context ;
typedef  TYPE_7__ const AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_24__**) ; 
 int H264_MAX_PICTURE_COUNT ; 
 int MAX_DELAYED_PIC_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_6__*,TYPE_6__*) ; 
 void* FUNC3 (TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_24__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_23__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,TYPE_8__*,int,TYPE_6__*,TYPE_6__*) ; 
 int FUNC7 (TYPE_6__*) ; 
 int FUNC8 (TYPE_6__*,TYPE_14__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_14__*) ; 
 int FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,TYPE_8__*,int) ; 

int FUNC12(AVCodecContext *dst,
                                  const AVCodecContext *src)
{
    H264Context *h = dst->priv_data, *h1 = src->priv_data;
    int inited = h->context_initialized, err = 0;
    int need_reinit = 0;
    int i, ret;

    if (dst == src)
        return 0;

    // We can't fail if SPS isn't set at it breaks current skip_frame code
    //if (!h1->ps.sps)
    //    return AVERROR_INVALIDDATA;

    if (inited &&
        (h->width                 != h1->width                 ||
         h->height                != h1->height                ||
         h->mb_width              != h1->mb_width              ||
         h->mb_height             != h1->mb_height             ||
         !h->ps.sps                                            ||
         h->ps.sps->bit_depth_luma    != h1->ps.sps->bit_depth_luma    ||
         h->ps.sps->chroma_format_idc != h1->ps.sps->chroma_format_idc ||
         h->ps.sps->colorspace        != h1->ps.sps->colorspace)) {
        need_reinit = 1;
    }

    /* copy block_offset since frame_start may not be called */
    FUNC11(h->block_offset, h1->block_offset, sizeof(h->block_offset));

    // SPS/PPS
    for (i = 0; i < FUNC1(h->ps.sps_list); i++) {
        FUNC4(&h->ps.sps_list[i]);
        if (h1->ps.sps_list[i]) {
            h->ps.sps_list[i] = FUNC3(h1->ps.sps_list[i]);
            if (!h->ps.sps_list[i])
                return FUNC0(ENOMEM);
        }
    }
    for (i = 0; i < FUNC1(h->ps.pps_list); i++) {
        FUNC4(&h->ps.pps_list[i]);
        if (h1->ps.pps_list[i]) {
            h->ps.pps_list[i] = FUNC3(h1->ps.pps_list[i]);
            if (!h->ps.pps_list[i])
                return FUNC0(ENOMEM);
        }
    }

    FUNC4(&h->ps.pps_ref);
    FUNC4(&h->ps.sps_ref);
    h->ps.pps = NULL;
    h->ps.sps = NULL;
    if (h1->ps.pps_ref) {
        h->ps.pps_ref = FUNC3(h1->ps.pps_ref);
        if (!h->ps.pps_ref)
            return FUNC0(ENOMEM);
        h->ps.pps = (const PPS*)h->ps.pps_ref->data;
    }
    if (h1->ps.sps_ref) {
        h->ps.sps_ref = FUNC3(h1->ps.sps_ref);
        if (!h->ps.sps_ref)
            return FUNC0(ENOMEM);
        h->ps.sps = (const SPS*)h->ps.sps_ref->data;
    }

    if (need_reinit || !inited) {
        h->width     = h1->width;
        h->height    = h1->height;
        h->mb_height = h1->mb_height;
        h->mb_width  = h1->mb_width;
        h->mb_num    = h1->mb_num;
        h->mb_stride = h1->mb_stride;
        h->b_stride  = h1->b_stride;
        h->x264_build = h1->x264_build;

        if (h->context_initialized || h1->context_initialized) {
            if ((err = FUNC10(h)) < 0) {
                FUNC5(h->avctx, AV_LOG_ERROR, "h264_slice_header_init() failed");
                return err;
            }
        }

        /* copy block_offset since frame_start may not be called */
        FUNC11(h->block_offset, h1->block_offset, sizeof(h->block_offset));
    }

    h->avctx->coded_height  = h1->avctx->coded_height;
    h->avctx->coded_width   = h1->avctx->coded_width;
    h->avctx->width         = h1->avctx->width;
    h->avctx->height        = h1->avctx->height;
    h->width_from_caller    = h1->width_from_caller;
    h->height_from_caller   = h1->height_from_caller;
    h->coded_picture_number = h1->coded_picture_number;
    h->first_field          = h1->first_field;
    h->picture_structure    = h1->picture_structure;
    h->mb_aff_frame         = h1->mb_aff_frame;
    h->droppable            = h1->droppable;

    for (i = 0; i < H264_MAX_PICTURE_COUNT; i++) {
        FUNC9(h, &h->DPB[i]);
        if (h1->DPB[i].f->buf[0] &&
            (ret = FUNC8(h, &h->DPB[i], &h1->DPB[i])) < 0)
            return ret;
    }

    h->cur_pic_ptr = FUNC2(h1->cur_pic_ptr, h, h1);
    FUNC9(h, &h->cur_pic);
    if (h1->cur_pic.f->buf[0]) {
        ret = FUNC8(h, &h->cur_pic, &h1->cur_pic);
        if (ret < 0)
            return ret;
    }

    h->enable_er       = h1->enable_er;
    h->workaround_bugs = h1->workaround_bugs;
    h->droppable       = h1->droppable;

    // extradata/NAL handling
    h->is_avc = h1->is_avc;
    h->nal_length_size = h1->nal_length_size;

    FUNC11(&h->poc,        &h1->poc,        sizeof(h->poc));

    FUNC11(h->short_ref,   h1->short_ref,   sizeof(h->short_ref));
    FUNC11(h->long_ref,    h1->long_ref,    sizeof(h->long_ref));
    FUNC11(h->delayed_pic, h1->delayed_pic, sizeof(h->delayed_pic));
    FUNC11(h->last_pocs,   h1->last_pocs,   sizeof(h->last_pocs));

    h->next_output_pic   = h1->next_output_pic;
    h->next_outputed_poc = h1->next_outputed_poc;

    FUNC11(h->mmco, h1->mmco, sizeof(h->mmco));
    h->nb_mmco         = h1->nb_mmco;
    h->mmco_reset      = h1->mmco_reset;
    h->explicit_ref_marking = h1->explicit_ref_marking;
    h->long_ref_count  = h1->long_ref_count;
    h->short_ref_count = h1->short_ref_count;

    FUNC6(h->short_ref, h1->short_ref, 32, h, h1);
    FUNC6(h->long_ref, h1->long_ref, 32, h, h1);
    FUNC6(h->delayed_pic, h1->delayed_pic,
                       MAX_DELAYED_PIC_COUNT + 2, h, h1);

    h->frame_recovered       = h1->frame_recovered;

    FUNC4(&h->sei.a53_caption.buf_ref);
    if (h1->sei.a53_caption.buf_ref) {
        h->sei.a53_caption.buf_ref = FUNC3(h1->sei.a53_caption.buf_ref);
        if (!h->sei.a53_caption.buf_ref)
            return FUNC0(ENOMEM);
    }

    if (!h->cur_pic_ptr)
        return 0;

    if (!h->droppable) {
        err = FUNC7(h);
        h->poc.prev_poc_msb = h->poc.poc_msb;
        h->poc.prev_poc_lsb = h->poc.poc_lsb;
    }
    h->poc.prev_frame_num_offset = h->poc.frame_num_offset;
    h->poc.prev_frame_num        = h->poc.frame_num;

    h->recovery_frame        = h1->recovery_frame;

    return err;
}