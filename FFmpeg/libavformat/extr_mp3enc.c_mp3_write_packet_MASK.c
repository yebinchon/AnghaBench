#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_16__ {size_t stream_index; } ;
struct TYPE_15__ {size_t audio_stream_idx; scalar_t__ pics_to_write; int /*<<< orphan*/  id3; int /*<<< orphan*/  queue_end; int /*<<< orphan*/  queue; } ;
struct TYPE_14__ {int nb_frames; } ;
typedef  TYPE_2__ MP3Context ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FF_PACKETLIST_FLAG_REF_PACKET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    MP3Context *mp3 = s->priv_data;

    if (pkt->stream_index == mp3->audio_stream_idx) {
        if (mp3->pics_to_write) {
            /* buffer audio packets until we get all the pictures */
            int ret = FUNC2(&mp3->queue, &mp3->queue_end, pkt, FF_PACKETLIST_FLAG_REF_PACKET);

            if (ret < 0) {
                FUNC0(s, AV_LOG_WARNING, "Not enough memory to buffer audio. Skipping picture streams\n");
                mp3->pics_to_write = 0;
                FUNC3(s);
                return FUNC4(s, pkt);
            }
        } else
            return FUNC4(s, pkt);
    } else {
        int ret;

        /* warn only once for each stream */
        if (s->streams[pkt->stream_index]->nb_frames == 1) {
            FUNC0(s, AV_LOG_WARNING, "Got more than one picture in stream %d,"
                   " ignoring.\n", pkt->stream_index);
        }
        if (!mp3->pics_to_write || s->streams[pkt->stream_index]->nb_frames >= 1)
            return 0;

        if ((ret = FUNC1(s, &mp3->id3, pkt)) < 0)
            return ret;
        mp3->pics_to_write--;

        /* flush the buffered audio packets */
        if (!mp3->pics_to_write &&
            (ret = FUNC3(s)) < 0)
            return ret;
    }

    return 0;
}