#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int type; int /*<<< orphan*/  gb; } ;
struct TYPE_5__ {int nb_nals; TYPE_2__* nals; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HEVCSEI ;
typedef  int /*<<< orphan*/  HEVCParamSets ;
typedef  TYPE_1__ H2645Packet ;
typedef  TYPE_2__ H2645NAL ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_HEVC ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
#define  HEVC_NAL_PPS 132 
#define  HEVC_NAL_SEI_PREFIX 131 
#define  HEVC_NAL_SEI_SUFFIX 130 
#define  HEVC_NAL_SPS 129 
#define  HEVC_NAL_VPS 128 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int,void*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const uint8_t *buf, int buf_size, HEVCParamSets *ps,
                                 HEVCSEI *sei, int is_nalff, int nal_length_size,
                                 int err_recognition, int apply_defdispwin, void *logctx)
{
    int i;
    int ret = 0;
    H2645Packet pkt = { 0 };

    ret = FUNC1(&pkt, buf, buf_size, logctx, is_nalff,
                                nal_length_size, AV_CODEC_ID_HEVC, 1, 0);
    if (ret < 0) {
        goto done;
    }

    for (i = 0; i < pkt.nb_nals; i++) {
        H2645NAL *nal = &pkt.nals[i];

        /* ignore everything except parameter sets and VCL NALUs */
        switch (nal->type) {
        case HEVC_NAL_VPS:
            ret = FUNC6(&nal->gb, logctx, ps);
            if (ret < 0)
                goto done;
            break;
        case HEVC_NAL_SPS:
            ret = FUNC5(&nal->gb, logctx, ps, apply_defdispwin);
            if (ret < 0)
                goto done;
            break;
        case HEVC_NAL_PPS:
            ret = FUNC3(&nal->gb, logctx, ps);
            if (ret < 0)
                goto done;
            break;
        case HEVC_NAL_SEI_PREFIX:
        case HEVC_NAL_SEI_SUFFIX:
            ret = FUNC4(&nal->gb, logctx, sei, ps, nal->type);
            if (ret < 0)
                goto done;
            break;
        default:
            FUNC0(logctx, AV_LOG_VERBOSE, "Ignoring NAL type %d in extradata\n", nal->type);
            break;
        }
    }

done:
    FUNC2(&pkt);
    if (err_recognition & AV_EF_EXPLODE)
        return ret;

    return 0;
}