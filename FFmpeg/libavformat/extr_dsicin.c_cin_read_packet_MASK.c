#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16_t ;
struct TYPE_15__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ pts; int* data; scalar_t__ duration; int /*<<< orphan*/  stream_index; } ;
struct TYPE_12__ {int pal_colors_count; int video_frame_size; int video_frame_type; scalar_t__ audio_frame_size; } ;
struct TYPE_13__ {scalar_t__ audio_buffer_size; scalar_t__ audio_stream_pts; int /*<<< orphan*/  audio_stream_index; int /*<<< orphan*/  video_stream_pts; int /*<<< orphan*/  video_stream_index; TYPE_1__ frame_header; } ;
typedef  TYPE_1__ CinFrameHeader ;
typedef  TYPE_2__ CinDemuxContext ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVPacket *pkt)
{
    CinDemuxContext *cin = s->priv_data;
    AVIOContext *pb = s->pb;
    CinFrameHeader *hdr = &cin->frame_header;
    int rc, palette_type, pkt_size;
    int ret;

    if (cin->audio_buffer_size == 0) {
        rc = FUNC5(cin, pb);
        if (rc)
            return rc;

        if ((int16_t)hdr->pal_colors_count < 0) {
            hdr->pal_colors_count = -(int16_t)hdr->pal_colors_count;
            palette_type = 1;
        } else {
            palette_type = 0;
        }

        /* palette and video packet */
        pkt_size = (palette_type + 3) * hdr->pal_colors_count + hdr->video_frame_size;

        pkt_size = FUNC6(pb, pkt_size);

        ret = FUNC1(pkt, 4 + pkt_size);
        if (ret < 0)
            return ret;

        pkt->stream_index = cin->video_stream_index;
        pkt->pts = cin->video_stream_pts++;

        pkt->data[0] = palette_type;
        pkt->data[1] = hdr->pal_colors_count & 0xFF;
        pkt->data[2] = hdr->pal_colors_count >> 8;
        pkt->data[3] = hdr->video_frame_type;

        ret = FUNC4(pb, &pkt->data[4], pkt_size);
        if (ret < 0) {
            FUNC2(pkt);
            return ret;
        }
        if (ret < pkt_size)
            FUNC3(pkt, 4 + ret);

        /* sound buffer will be processed on next read_packet() call */
        cin->audio_buffer_size = hdr->audio_frame_size;
        return 0;
    }

    /* audio packet */
    ret = FUNC0(pb, pkt, cin->audio_buffer_size);
    if (ret < 0)
        return ret;

    pkt->stream_index = cin->audio_stream_index;
    pkt->pts = cin->audio_stream_pts;
    pkt->duration = cin->audio_buffer_size - (pkt->pts == 0);
    cin->audio_stream_pts += pkt->duration;
    cin->audio_buffer_size = 0;
    return 0;
}