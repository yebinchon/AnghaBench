#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int nb_units; TYPE_2__* units; } ;
struct TYPE_10__ {scalar_t__ nal_ref_idc; scalar_t__ nal_unit_type; } ;
struct TYPE_12__ {size_t payload_count; int /*<<< orphan*/ * payload; TYPE_1__ nal_unit_header; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_3__* content; } ;
typedef  int /*<<< orphan*/  H264RawSEIPayload ;
typedef  TYPE_3__ H264RawSEI ;
typedef  TYPE_4__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t H264_MAX_SEI_PAYLOADS ; 
 scalar_t__ H264_NAL_IDR_SLICE ; 
 scalar_t__ H264_NAL_SEI ; 
 scalar_t__ H264_NAL_SLICE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  cbs_h264_free_sei ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int,scalar_t__,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC8(CodedBitstreamContext *ctx,
                                CodedBitstreamFragment *au,
                                H264RawSEIPayload *payload)
{
    H264RawSEI *sei = NULL;
    int err, i;

    // Find an existing SEI NAL unit to add to.
    for (i = 0; i < au->nb_units; i++) {
        if (au->units[i].type == H264_NAL_SEI) {
            sei = au->units[i].content;
            if (sei->payload_count < H264_MAX_SEI_PAYLOADS)
                break;

            sei = NULL;
        }
    }

    if (!sei) {
        // Need to make a new SEI NAL unit.  Insert it before the first
        // slice data NAL unit; if no slice data, add at the end.
        AVBufferRef *sei_ref;

        sei = FUNC4(sizeof(*sei));
        if (!sei) {
            err = FUNC0(ENOMEM);
            goto fail;
        }

        sei->nal_unit_header.nal_unit_type = H264_NAL_SEI;
        sei->nal_unit_header.nal_ref_idc   = 0;

        sei_ref = FUNC1((uint8_t*)sei, sizeof(*sei),
                                   &cbs_h264_free_sei, NULL, 0);
        if (!sei_ref) {
            FUNC3(&sei);
            err = FUNC0(ENOMEM);
            goto fail;
        }

        for (i = 0; i < au->nb_units; i++) {
            if (au->units[i].type == H264_NAL_SLICE ||
                au->units[i].type == H264_NAL_IDR_SLICE)
                break;
        }

        err = FUNC6(ctx, au, i, H264_NAL_SEI,
                                         sei, sei_ref);
        FUNC2(&sei_ref);
        if (err < 0)
            goto fail;
    }

    FUNC7(&sei->payload[sei->payload_count], payload, sizeof(*payload));
    ++sei->payload_count;

    return 0;
fail:
    FUNC5(payload);
    return err;
}