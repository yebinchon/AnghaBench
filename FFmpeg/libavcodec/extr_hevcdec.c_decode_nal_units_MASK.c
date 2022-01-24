#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {scalar_t__ skip_frame; int /*<<< orphan*/  codec_id; } ;
struct TYPE_13__ {int nb_nals; TYPE_3__* nals; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {int last_eos; int eos; int overlap; scalar_t__ threads_type; TYPE_1__* ref; TYPE_5__* avctx; TYPE_4__ pkt; int /*<<< orphan*/  nal_length_size; int /*<<< orphan*/  is_nalff; } ;
struct TYPE_10__ {int /*<<< orphan*/  tf; } ;
typedef  TYPE_2__ HEVCContext ;
typedef  TYPE_3__ H2645NAL ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 scalar_t__ AVDISCARD_NONREF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FF_THREAD_FRAME ; 
 scalar_t__ HEVC_NAL_EOB_NUT ; 
 scalar_t__ HEVC_NAL_EOS_NUT ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/  const*,int,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(HEVCContext *s, const uint8_t *buf, int length)
{
    int i, ret = 0;
    int eos_at_start = 1;

    s->ref = NULL;
    s->last_eos = s->eos;
    s->eos = 0;
    s->overlap = 0;

    /* split the input packet into NAL units, so we know the upper bound on the
     * number of slices in the frame */
    ret = FUNC2(&s->pkt, buf, length, s->avctx, s->is_nalff,
                                s->nal_length_size, s->avctx->codec_id, 1, 0);
    if (ret < 0) {
        FUNC0(s->avctx, AV_LOG_ERROR,
               "Error splitting the input into NAL units.\n");
        return ret;
    }

    for (i = 0; i < s->pkt.nb_nals; i++) {
        if (s->pkt.nals[i].type == HEVC_NAL_EOB_NUT ||
            s->pkt.nals[i].type == HEVC_NAL_EOS_NUT) {
            if (eos_at_start) {
                s->last_eos = 1;
            } else {
                s->eos = 1;
            }
        } else {
            eos_at_start = 0;
        }
    }

    /* decode the NAL units */
    for (i = 0; i < s->pkt.nb_nals; i++) {
        H2645NAL *nal = &s->pkt.nals[i];

        if (s->avctx->skip_frame >= AVDISCARD_ALL ||
            (s->avctx->skip_frame >= AVDISCARD_NONREF
            && FUNC3(nal->type)))
            continue;

        ret = FUNC1(s, nal);
        if (ret >= 0 && s->overlap > 2)
            ret = AVERROR_INVALIDDATA;
        if (ret < 0) {
            FUNC0(s->avctx, AV_LOG_WARNING,
                   "Error parsing NAL unit #%d.\n", i);
            goto fail;
        }
    }

fail:
    if (s->ref && s->threads_type == FF_THREAD_FRAME)
        FUNC4(&s->ref->tf, INT_MAX, 0);

    return ret;
}