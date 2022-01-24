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
struct TYPE_5__ {int stats_size; int stats_offset; scalar_t__ stats; int /*<<< orphan*/  t_state; } ;
typedef  TYPE_1__ TheoraContext ;
struct TYPE_6__ {int /*<<< orphan*/  stats_in; TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSUP ; 
 int /*<<< orphan*/  TH_ENCCTL_2PASS_IN ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx)
{
#ifdef TH_ENCCTL_2PASS_IN
    TheoraContext *h = avctx->priv_data;
    int bytes;
    if (!h->stats) {
        if (!avctx->stats_in) {
            av_log(avctx, AV_LOG_ERROR, "No statsfile for second pass\n");
            return AVERROR(EINVAL);
        }
        h->stats_size = strlen(avctx->stats_in) * 3/4;
        h->stats      = av_malloc(h->stats_size);
        if (!h->stats) {
            h->stats_size = 0;
            return AVERROR(ENOMEM);
        }
        h->stats_size = av_base64_decode(h->stats, avctx->stats_in, h->stats_size);
    }
    while (h->stats_size - h->stats_offset > 0) {
        bytes = th_encode_ctl(h->t_state, TH_ENCCTL_2PASS_IN,
                              h->stats + h->stats_offset,
                              h->stats_size - h->stats_offset);
        if (bytes < 0) {
            av_log(avctx, AV_LOG_ERROR, "Error submitting stats\n");
            return AVERROR_EXTERNAL;
        }
        if (!bytes)
            return 0;
        h->stats_offset += bytes;
    }
    return 0;
#else
    FUNC2(avctx, AV_LOG_ERROR, "libtheora too old to support 2pass\n");
    return FUNC0(ENOSUP);
#endif
}