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
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int nb_bsfs; int idx; int flushed_idx; int /*<<< orphan*/ * bsfs; } ;
typedef  TYPE_1__ BSFListContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVBSFContext *bsf, AVPacket *out)
{
    BSFListContext *lst = bsf->priv_data;
    int ret;

    if (!lst->nb_bsfs)
        return FUNC4(bsf, out);

    while (1) {
        if (lst->idx > lst->flushed_idx) {
            ret = FUNC1(lst->bsfs[lst->idx-1], out);
            if (ret == FUNC0(EAGAIN)) {
                /* no more packets from idx-1, try with previous */
                lst->idx--;
                continue;
            } else if (ret == AVERROR_EOF) {
                /* filter idx-1 is done, continue with idx...nb_bsfs */
                lst->flushed_idx = lst->idx;
                continue;
            }else if (ret < 0) {
                /* filtering error */
                break;
            }
        } else {
            ret = FUNC4(bsf, out);
            if (ret == AVERROR_EOF) {
                lst->idx = lst->flushed_idx;
            } else if (ret < 0)
                break;
        }

        if (lst->idx < lst->nb_bsfs) {
            AVPacket *pkt;
            if (ret == AVERROR_EOF && lst->idx == lst->flushed_idx) {
                /* ff_bsf_get_packet_ref returned EOF and idx is first
                 * filter of yet not flushed filter chain */
                pkt = NULL;
            } else {
                pkt = out;
            }
            ret = FUNC2(lst->bsfs[lst->idx], pkt);
            if (ret < 0)
                break;
            lst->idx++;
        } else {
            /* The end of filter chain, break to return result */
            break;
        }
    }

    if (ret < 0)
        FUNC3(out);

    return ret;
}