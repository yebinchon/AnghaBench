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
struct TYPE_8__ {int rep_data_len; } ;
struct TYPE_7__ {int data_size; int size_left; void* dts; int /*<<< orphan*/  avpkt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ ASFPacket ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, ASFPacket *asf_pkt)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret, data_size;

    if (!asf_pkt->data_size) {
        data_size = FUNC1(pb); // read media object size
        if (data_size <= 0)
            return AVERROR_INVALIDDATA;
        if ((ret = FUNC0(&asf_pkt->avpkt, data_size)) < 0)
            return ret;
        asf_pkt->data_size = asf_pkt->size_left = data_size;
    } else
        FUNC2(pb, 4); // reading of media object size is already done
    asf_pkt->dts = FUNC1(pb); // read presentation time
    if (asf->rep_data_len >= 8)
        FUNC2(pb, asf->rep_data_len - 8); // skip replicated data

    return 0;
}