#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  session; scalar_t__ a53_cc; } ;
typedef  TYPE_2__ VTEncContext ;
struct TYPE_20__ {int num; int /*<<< orphan*/  den; } ;
struct TYPE_25__ {TYPE_1__ time_base; } ;
struct TYPE_24__ {int pts; } ;
struct TYPE_23__ {scalar_t__ size; } ;
struct TYPE_22__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ExtraSEI ;
typedef  int /*<<< orphan*/ * CVPixelBufferRef ;
typedef  int /*<<< orphan*/  CMTime ;
typedef  int /*<<< orphan*/ * CFDictionaryRef ;
typedef  TYPE_4__ AVFrameSideData ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_FRAME_DATA_A53_CC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (TYPE_5__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC6 (int) ; 
 int FUNC7 (TYPE_6__*,TYPE_5__ const*,int /*<<< orphan*/ **) ; 
 int FUNC8 (TYPE_5__ const*,int /*<<< orphan*/ **) ; 
 int FUNC9 (TYPE_5__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCMTimeInvalid ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx,
                            VTEncContext   *vtctx,
                            const AVFrame  *frame)
{
    CMTime time;
    CFDictionaryRef frame_dict;
    CVPixelBufferRef cv_img = NULL;
    AVFrameSideData *side_data = NULL;
    ExtraSEI *sei = NULL;
    int status = FUNC7(avctx, frame, &cv_img);

    if (status) return status;

    status = FUNC8(frame, &frame_dict);
    if (status) {
        FUNC0(cv_img);
        return status;
    }

    side_data = FUNC3(frame, AV_FRAME_DATA_A53_CC);
    if (vtctx->a53_cc && side_data && side_data->size) {
        sei = FUNC6(sizeof(*sei));
        if (!sei) {
            FUNC5(avctx, AV_LOG_ERROR, "Not enough memory for closed captions, skipping\n");
        } else {
            int ret = FUNC9(frame, 0, &sei->data, &sei->size);
            if (ret < 0) {
                FUNC5(avctx, AV_LOG_ERROR, "Not enough memory for closed captions, skipping\n");
                FUNC4(sei);
                sei = NULL;
            }
        }
    }

    time = FUNC1(frame->pts * avctx->time_base.num, avctx->time_base.den);
    status = FUNC2(
        vtctx->session,
        cv_img,
        time,
        kCMTimeInvalid,
        frame_dict,
        sei,
        NULL
    );

    if (frame_dict) FUNC0(frame_dict);
    FUNC0(cv_img);

    if (status) {
        FUNC5(avctx, AV_LOG_ERROR, "Error: cannot encode frame: %d\n", status);
        return AVERROR_EXTERNAL;
    }

    return 0;
}