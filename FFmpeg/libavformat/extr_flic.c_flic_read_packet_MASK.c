#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {unsigned char* data; void* pos; int /*<<< orphan*/  stream_index; scalar_t__ pts; } ;
struct TYPE_8__ {int /*<<< orphan*/  audio_stream_index; int /*<<< orphan*/  frame_number; int /*<<< orphan*/  video_stream_index; } ;
typedef  TYPE_1__ FlicDemuxContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int FUNC1 (unsigned char*) ; 
 unsigned int FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  EIO ; 
 int FLIC_CHUNK_MAGIC_1 ; 
 int FLIC_CHUNK_MAGIC_2 ; 
 int FLIC_PREAMBLE_SIZE ; 
 int FLIC_TFTD_CHUNK_AUDIO ; 
 scalar_t__ FUNC3 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s,
                            AVPacket *pkt)
{
    FlicDemuxContext *flic = s->priv_data;
    AVIOContext *pb = s->pb;
    int packet_read = 0;
    unsigned int size;
    int magic;
    int ret = 0;
    unsigned char preamble[FLIC_PREAMBLE_SIZE];

    while (!packet_read && !FUNC5(pb)) {

        if ((ret = FUNC6(pb, preamble, FLIC_PREAMBLE_SIZE)) !=
            FLIC_PREAMBLE_SIZE) {
            ret = FUNC0(EIO);
            break;
        }

        size = FUNC2(&preamble[0]);
        magic = FUNC1(&preamble[4]);

        if (((magic == FLIC_CHUNK_MAGIC_1) || (magic == FLIC_CHUNK_MAGIC_2)) && size > FLIC_PREAMBLE_SIZE) {
            if (FUNC3(pkt, size)) {
                ret = FUNC0(EIO);
                break;
            }
            pkt->stream_index = flic->video_stream_index;
            pkt->pts = flic->frame_number++;
            pkt->pos = FUNC8(pb);
            FUNC9(pkt->data, preamble, FLIC_PREAMBLE_SIZE);
            ret = FUNC6(pb, pkt->data + FLIC_PREAMBLE_SIZE,
                size - FLIC_PREAMBLE_SIZE);
            if (ret != size - FLIC_PREAMBLE_SIZE) {
                FUNC4(pkt);
                ret = FUNC0(EIO);
            }
            packet_read = 1;
        } else if (magic == FLIC_TFTD_CHUNK_AUDIO) {
            if (FUNC3(pkt, size)) {
                ret = FUNC0(EIO);
                break;
            }

            /* skip useless 10B sub-header (yes, it's not accounted for in the chunk header) */
            FUNC7(pb, 10);

            pkt->stream_index = flic->audio_stream_index;
            pkt->pos = FUNC8(pb);
            ret = FUNC6(pb, pkt->data, size);

            if (ret != size) {
                FUNC4(pkt);
                ret = FUNC0(EIO);
            }

            packet_read = 1;
        } else {
            /* not interested in this chunk */
            FUNC7(pb, size - 6);
        }
    }

    return FUNC5(pb) ? AVERROR_EOF : ret;
}