#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vps_rbsp_buf ;
typedef  int /*<<< orphan*/  vps_buf ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_21__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;
struct TYPE_20__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/ * member_0; } ;
struct TYPE_19__ {int /*<<< orphan*/ * rbsp_buffer; int /*<<< orphan*/  rbsp_buffer_alloc_size; int /*<<< orphan*/ * member_0; } ;
struct TYPE_16__ {scalar_t__ vui_num_ticks_poc_diff_one_minus1; int /*<<< orphan*/  vui_poc_proportional_to_timing_flag; int /*<<< orphan*/  vui_time_scale; int /*<<< orphan*/  vui_num_units_in_tick; int /*<<< orphan*/  vui_timing_info_present_flag; } ;
struct TYPE_18__ {int /*<<< orphan*/  vps_id; TYPE_2__ vui; TYPE_1__* temporal_layer; int /*<<< orphan*/  ptl; int /*<<< orphan*/  temporal_id_nesting_flag; int /*<<< orphan*/  max_sub_layers; int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int vps_max_layers; int vps_sub_layer_ordering_info_present_flag; int vps_num_layer_sets; scalar_t__ vps_num_hrd_parameters; scalar_t__ vps_num_ticks_poc_diff_one; int /*<<< orphan*/  vps_poc_proportional_to_timing_flag; int /*<<< orphan*/  vps_time_scale; int /*<<< orphan*/  vps_num_units_in_tick; int /*<<< orphan*/  vps_timing_info_present_flag; int /*<<< orphan*/ * vps_max_latency_increase; int /*<<< orphan*/ * vps_num_reorder_pics; int /*<<< orphan*/ * vps_max_dec_pic_buffering; int /*<<< orphan*/  ptl; int /*<<< orphan*/  vps_temporal_id_nesting_flag; int /*<<< orphan*/  vps_max_sub_layers; int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {int /*<<< orphan*/  max_latency_increase; int /*<<< orphan*/  num_reorder_pics; int /*<<< orphan*/  max_dec_pic_buffering; } ;
typedef  int /*<<< orphan*/  QSVEncContext ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  TYPE_3__ HEVCVPS ;
typedef  TYPE_4__ HEVCSPS ;
typedef  TYPE_5__ H2645RBSP ;
typedef  TYPE_6__ H2645NAL ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_UNKNOWN ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HEVC_MAX_SUB_LAYERS ; 
 int HEVC_NAL_SPS ; 
 int HEVC_NAL_VPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,TYPE_5__*,TYPE_6__*,int) ; 
 int FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC17 (TYPE_4__*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC21(QSVEncContext *q, AVCodecContext *avctx)
{
    GetByteContext gbc;
    PutByteContext pbc;

    GetBitContext gb;
    H2645RBSP sps_rbsp = { NULL };
    H2645NAL sps_nal = { NULL };
    HEVCSPS sps = { 0 };
    HEVCVPS vps = { 0 };
    uint8_t vps_buf[128], vps_rbsp_buf[128];
    uint8_t *new_extradata;
    unsigned int sps_id;
    int ret, i, type, vps_size;

    if (!avctx->extradata_size) {
        FUNC3(avctx, AV_LOG_ERROR, "No extradata returned from libmfx\n");
        return AVERROR_UNKNOWN;
    }

    FUNC1(&sps_rbsp.rbsp_buffer, &sps_rbsp.rbsp_buffer_alloc_size, avctx->extradata_size);
    if (!sps_rbsp.rbsp_buffer)
        return FUNC0(ENOMEM);

    /* parse the SPS */
    ret = FUNC15(avctx->extradata + 4, avctx->extradata_size - 4, &sps_rbsp, &sps_nal, 1);
    if (ret < 0) {
        FUNC3(avctx, AV_LOG_ERROR, "Error unescaping the SPS buffer\n");
        return ret;
    }

    ret = FUNC19(&gb, sps_nal.data, sps_nal.size);
    if (ret < 0) {
        FUNC2(&sps_rbsp.rbsp_buffer);
        return ret;
    }

    FUNC18(&gb, 1);
    type = FUNC18(&gb, 6);
    if (type != HEVC_NAL_SPS) {
        FUNC3(avctx, AV_LOG_ERROR, "Unexpected NAL type in the extradata: %d\n",
               type);
        FUNC2(&sps_rbsp.rbsp_buffer);
        return AVERROR_INVALIDDATA;
    }
    FUNC18(&gb, 9);

    ret = FUNC17(&sps, &gb, &sps_id, 0, NULL, avctx);
    FUNC2(&sps_rbsp.rbsp_buffer);
    if (ret < 0) {
        FUNC3(avctx, AV_LOG_ERROR, "Error parsing the SPS\n");
        return ret;
    }

    /* generate the VPS */
    vps.vps_max_layers     = 1;
    vps.vps_max_sub_layers = sps.max_sub_layers;
    vps.vps_temporal_id_nesting_flag = sps.temporal_id_nesting_flag;
    FUNC20(&vps.ptl, &sps.ptl, sizeof(vps.ptl));
    vps.vps_sub_layer_ordering_info_present_flag = 1;
    for (i = 0; i < HEVC_MAX_SUB_LAYERS; i++) {
        vps.vps_max_dec_pic_buffering[i] = sps.temporal_layer[i].max_dec_pic_buffering;
        vps.vps_num_reorder_pics[i]      = sps.temporal_layer[i].num_reorder_pics;
        vps.vps_max_latency_increase[i]  = sps.temporal_layer[i].max_latency_increase;
    }

    vps.vps_num_layer_sets                  = 1;
    vps.vps_timing_info_present_flag        = sps.vui.vui_timing_info_present_flag;
    vps.vps_num_units_in_tick               = sps.vui.vui_num_units_in_tick;
    vps.vps_time_scale                      = sps.vui.vui_time_scale;
    vps.vps_poc_proportional_to_timing_flag = sps.vui.vui_poc_proportional_to_timing_flag;
    vps.vps_num_ticks_poc_diff_one          = sps.vui.vui_num_ticks_poc_diff_one_minus1 + 1;
    vps.vps_num_hrd_parameters              = 0;

    /* generate the encoded RBSP form of the VPS */
    ret = FUNC16(&vps, sps.vps_id, vps_rbsp_buf, sizeof(vps_rbsp_buf));
    if (ret < 0) {
        FUNC3(avctx, AV_LOG_ERROR, "Error writing the VPS\n");
        return ret;
    }

    /* escape and add the startcode */
    FUNC7(&gbc, vps_rbsp_buf, ret);
    FUNC8(&pbc, vps_buf, sizeof(vps_buf));

    FUNC11(&pbc, 1);                 // startcode
    FUNC12(&pbc, HEVC_NAL_VPS << 1); // NAL
    FUNC12(&pbc, 1);                 // header

    while (FUNC6(&gbc)) {
        if (FUNC6(&gbc) >= 3 && FUNC9(&gbc) <= 3) {
            FUNC10(&pbc, 3);
            FUNC13(&gbc, 2);
        } else
            FUNC12(&pbc, FUNC5(&gbc));
    }

    vps_size = FUNC14(&pbc);
    new_extradata = FUNC4(vps_size + avctx->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!new_extradata)
        return FUNC0(ENOMEM);
    FUNC20(new_extradata, vps_buf, vps_size);
    FUNC20(new_extradata + vps_size, avctx->extradata, avctx->extradata_size);

    FUNC2(&avctx->extradata);
    avctx->extradata       = new_extradata;
    avctx->extradata_size += vps_size;

    return 0;
}