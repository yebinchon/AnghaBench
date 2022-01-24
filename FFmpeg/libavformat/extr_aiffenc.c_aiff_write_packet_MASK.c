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
struct TYPE_14__ {scalar_t__ audio_stream_idx; int /*<<< orphan*/  pict_list_end; int /*<<< orphan*/  pict_list; } ;
struct TYPE_13__ {TYPE_2__** streams; int /*<<< orphan*/ * pb; TYPE_5__* priv_data; } ;
struct TYPE_12__ {scalar_t__ stream_index; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int nb_frames; TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AIFFOutputContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FF_PACKETLIST_FLAG_REF_PACKET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    AIFFOutputContext *aiff = s->priv_data;
    AVIOContext *pb = s->pb;
    if (pkt->stream_index == aiff->audio_stream_idx)
        FUNC1(pb, pkt->data, pkt->size);
    else {
        if (s->streams[pkt->stream_index]->codecpar->codec_type != AVMEDIA_TYPE_VIDEO)
            return 0;

        /* warn only once for each stream */
        if (s->streams[pkt->stream_index]->nb_frames == 1) {
            FUNC0(s, AV_LOG_WARNING, "Got more than one picture in stream %d,"
                   " ignoring.\n", pkt->stream_index);
        }
        if (s->streams[pkt->stream_index]->nb_frames >= 1)
            return 0;

        return FUNC2(&aiff->pict_list, &aiff->pict_list_end,
                                  pkt, FF_PACKETLIST_FLAG_REF_PACKET);
    }

    return 0;
}