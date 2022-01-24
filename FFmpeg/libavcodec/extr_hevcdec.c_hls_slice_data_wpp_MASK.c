#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_29__ {int /*<<< orphan*/  (* execute2 ) (TYPE_9__*,int /*<<< orphan*/ ,int*,int*,int) ;} ;
struct TYPE_28__ {int size; int skipped_bytes; int* skipped_bytes_pos; int /*<<< orphan*/ * data; } ;
struct TYPE_25__ {int num_entry_point_offsets; int slice_ctb_addr_rs; int* entry_point_offset; int* size; int* offset; } ;
struct TYPE_23__ {TYPE_1__* pps; TYPE_2__* sps; } ;
struct TYPE_27__ {int threads_number; TYPE_5__ sh; TYPE_9__* avctx; TYPE_3__ ps; int /*<<< orphan*/  wpp_err; TYPE_16__** HEVClcList; TYPE_10__** sList; int /*<<< orphan*/  const* data; TYPE_6__* HEVClc; } ;
struct TYPE_24__ {int index; } ;
struct TYPE_26__ {TYPE_4__ gb; } ;
struct TYPE_22__ {int ctb_width; int ctb_height; } ;
struct TYPE_21__ {scalar_t__ entropy_coding_sync_enabled_flag; } ;
struct TYPE_20__ {int first_qp_group; int /*<<< orphan*/  qp_y; } ;
struct TYPE_19__ {TYPE_16__* HEVClc; } ;
typedef  TYPE_6__ HEVCLocalContext ;
typedef  TYPE_7__ HEVCContext ;
typedef  TYPE_8__ H2645NAL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_10__* FUNC4 (int) ; 
 int* FUNC5 (int,int) ; 
 TYPE_16__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  hls_decode_entry_wpp ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*,int /*<<< orphan*/ ,int*,int*,int) ; 

__attribute__((used)) static int FUNC11(HEVCContext *s, const H2645NAL *nal)
{
    const uint8_t *data = nal->data;
    int length          = nal->size;
    HEVCLocalContext *lc = s->HEVClc;
    int *ret = FUNC5(s->sh.num_entry_point_offsets + 1, sizeof(int));
    int *arg = FUNC5(s->sh.num_entry_point_offsets + 1, sizeof(int));
    int64_t offset;
    int64_t startheader, cmpt = 0;
    int i, j, res = 0;

    if (!ret || !arg) {
        FUNC2(ret);
        FUNC2(arg);
        return FUNC0(ENOMEM);
    }

    if (s->sh.slice_ctb_addr_rs + s->sh.num_entry_point_offsets * s->ps.sps->ctb_width >= s->ps.sps->ctb_width * s->ps.sps->ctb_height) {
        FUNC3(s->avctx, AV_LOG_ERROR, "WPP ctb addresses are wrong (%d %d %d %d)\n",
            s->sh.slice_ctb_addr_rs, s->sh.num_entry_point_offsets,
            s->ps.sps->ctb_width, s->ps.sps->ctb_height
        );
        res = AVERROR_INVALIDDATA;
        goto error;
    }

    FUNC7(s->avctx, s->sh.num_entry_point_offsets + 1);

    if (!s->sList[1]) {
        for (i = 1; i < s->threads_number; i++) {
            s->sList[i] = FUNC4(sizeof(HEVCContext));
            FUNC9(s->sList[i], s, sizeof(HEVCContext));
            s->HEVClcList[i] = FUNC6(sizeof(HEVCLocalContext));
            s->sList[i]->HEVClc = s->HEVClcList[i];
        }
    }

    offset = (lc->gb.index >> 3);

    for (j = 0, cmpt = 0, startheader = offset + s->sh.entry_point_offset[0]; j < nal->skipped_bytes; j++) {
        if (nal->skipped_bytes_pos[j] >= offset && nal->skipped_bytes_pos[j] < startheader) {
            startheader--;
            cmpt++;
        }
    }

    for (i = 1; i < s->sh.num_entry_point_offsets; i++) {
        offset += (s->sh.entry_point_offset[i - 1] - cmpt);
        for (j = 0, cmpt = 0, startheader = offset
             + s->sh.entry_point_offset[i]; j < nal->skipped_bytes; j++) {
            if (nal->skipped_bytes_pos[j] >= offset && nal->skipped_bytes_pos[j] < startheader) {
                startheader--;
                cmpt++;
            }
        }
        s->sh.size[i - 1] = s->sh.entry_point_offset[i] - cmpt;
        s->sh.offset[i - 1] = offset;

    }
    if (s->sh.num_entry_point_offsets != 0) {
        offset += s->sh.entry_point_offset[s->sh.num_entry_point_offsets - 1] - cmpt;
        if (length < offset) {
            FUNC3(s->avctx, AV_LOG_ERROR, "entry_point_offset table is corrupted\n");
            res = AVERROR_INVALIDDATA;
            goto error;
        }
        s->sh.size[s->sh.num_entry_point_offsets - 1] = length - offset;
        s->sh.offset[s->sh.num_entry_point_offsets - 1] = offset;

    }
    s->data = data;

    for (i = 1; i < s->threads_number; i++) {
        s->sList[i]->HEVClc->first_qp_group = 1;
        s->sList[i]->HEVClc->qp_y = s->sList[0]->HEVClc->qp_y;
        FUNC9(s->sList[i], s, sizeof(HEVCContext));
        s->sList[i]->HEVClc = s->HEVClcList[i];
    }

    FUNC1(&s->wpp_err, 0);
    FUNC8(s->avctx);

    for (i = 0; i <= s->sh.num_entry_point_offsets; i++) {
        arg[i] = i;
        ret[i] = 0;
    }

    if (s->ps.pps->entropy_coding_sync_enabled_flag)
        s->avctx->execute2(s->avctx, hls_decode_entry_wpp, arg, ret, s->sh.num_entry_point_offsets + 1);

    for (i = 0; i <= s->sh.num_entry_point_offsets; i++)
        res += ret[i];
error:
    FUNC2(ret);
    FUNC2(arg);
    return res;
}