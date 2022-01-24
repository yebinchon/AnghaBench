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
struct AVFormatContext {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  streaminfo; } ;
typedef  TYPE_1__ FlacMuxerContext ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FLAC_STREAMINFO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct AVFormatContext *s, AVPacket *pkt)
{
    FlacMuxerContext *c = s->priv_data;
    uint8_t *streaminfo;
    int streaminfo_size;

    /* check for updated streaminfo */
    streaminfo = FUNC3(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                         &streaminfo_size);
    if (streaminfo && streaminfo_size == FLAC_STREAMINFO_SIZE) {
        FUNC1(&c->streaminfo);

        c->streaminfo = FUNC2(FLAC_STREAMINFO_SIZE);
        if (!c->streaminfo)
            return FUNC0(ENOMEM);
        FUNC5(c->streaminfo, streaminfo, FLAC_STREAMINFO_SIZE);
    }

    if (pkt->size)
        FUNC4(s->pb, pkt->data, pkt->size);
    return 0;
}