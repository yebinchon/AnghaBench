#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* internal; } ;
struct TYPE_7__ {int nb_bsfs; int /*<<< orphan*/ * bsfs; } ;
struct TYPE_6__ {TYPE_2__ filter; } ;
typedef  TYPE_2__ DecodeFilterContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, AVPacket *pkt)
{
    DecodeFilterContext *s = &avctx->internal->filter;
    int idx, ret;

    /* start with the last filter in the chain */
    idx = s->nb_bsfs - 1;
    while (idx >= 0) {
        /* request a packet from the currently selected filter */
        ret = FUNC1(s->bsfs[idx], pkt);
        if (ret == FUNC0(EAGAIN)) {
            /* no packets available, try the next filter up the chain */
            idx--;
            continue;
        } else if (ret < 0 && ret != AVERROR_EOF) {
            return ret;
        }

        /* got a packet or EOF -- pass it to the caller or to the next filter
         * down the chain */
        if (idx == s->nb_bsfs - 1) {
            return ret;
        } else {
            idx++;
            ret = FUNC2(s->bsfs[idx], ret < 0 ? NULL : pkt);
            if (ret < 0) {
                FUNC3(avctx, AV_LOG_ERROR,
                       "Error pre-processing a packet before decoding\n");
                FUNC4(pkt);
                return ret;
            }
        }
    }

    return FUNC0(EAGAIN);
}