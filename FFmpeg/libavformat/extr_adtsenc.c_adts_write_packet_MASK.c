#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_17__ {int pce_size; int /*<<< orphan*/ * pce_data; scalar_t__ write_adts; } ;
struct TYPE_16__ {int /*<<< orphan*/  extradata; int /*<<< orphan*/  extradata_size; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;
typedef  TYPE_5__ ADTSContext ;

/* Variables and functions */
 int ADTS_HEADER_SIZE ; 
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int FUNC0 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    ADTSContext *adts = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVIOContext *pb = s->pb;
    uint8_t buf[ADTS_HEADER_SIZE];

    if (!pkt->size)
        return 0;
    if (!par->extradata_size) {
        uint8_t *side_data;
        int side_data_size = 0, ret;

        side_data = FUNC2(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                            &side_data_size);
        if (side_data_size) {
            ret = FUNC0(s, adts, side_data, side_data_size);
            if (ret < 0)
                return ret;
            ret = FUNC4(par, side_data_size);
            if (ret < 0)
                return ret;
            FUNC5(par->extradata, side_data, side_data_size);
        }
    }
    if (adts->write_adts) {
        int err = FUNC1(adts, buf, pkt->size,
                                             adts->pce_size);
        if (err < 0)
            return err;
        FUNC3(pb, buf, ADTS_HEADER_SIZE);
        if (adts->pce_size) {
            FUNC3(pb, adts->pce_data, adts->pce_size);
            adts->pce_size = 0;
        }
    }
    FUNC3(pb, pkt->data, pkt->size);

    return 0;
}