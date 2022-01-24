#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int pts; unsigned char* data; int /*<<< orphan*/  stream_index; int /*<<< orphan*/  pos; } ;
struct TYPE_12__ {int video_pts; unsigned int track_count; TYPE_1__* tracks; int /*<<< orphan*/  video_stream_index; } ;
struct TYPE_11__ {int channels; int audio_pts; int bits; int /*<<< orphan*/  adpcm; int /*<<< orphan*/  stream_index; } ;
typedef  TYPE_2__ FourxmDemuxContext ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  EIO ; 
#define  LIST_TAG 135 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
#define  cfr2_TAG 134 
#define  cfrm_TAG 133 
#define  ifr2_TAG 132 
#define  ifrm_TAG 131 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,int) ; 
#define  pfr2_TAG 130 
#define  pfrm_TAG 129 
#define  snd__TAG 128 

__attribute__((used)) static int FUNC12(AVFormatContext *s,
                              AVPacket *pkt)
{
    FourxmDemuxContext *fourxm = s->priv_data;
    AVIOContext *pb            = s->pb;
    unsigned int fourcc_tag;
    unsigned int size;
    int ret = 0;
    unsigned int track_number;
    int packet_read = 0;
    unsigned char header[8];
    int audio_frame_count;

    while (!packet_read) {
        if ((ret = FUNC7(s->pb, header, 8)) < 0)
            return ret;
        fourcc_tag = FUNC1(&header[0]);
        size       = FUNC1(&header[4]);
        if (FUNC6(pb))
            return FUNC0(EIO);
        switch (fourcc_tag) {
        case LIST_TAG:
            /* this is a good time to bump the video pts */
            fourxm->video_pts++;

            /* skip the LIST-* tag and move on to the next fourcc */
            FUNC8(pb);
            break;

        case ifrm_TAG:
        case pfrm_TAG:
        case cfrm_TAG:
        case ifr2_TAG:
        case pfr2_TAG:
        case cfr2_TAG:
            /* allocate 8 more bytes than 'size' to account for fourcc
             * and size */
            if (size + 8 < size || FUNC3(pkt, size + 8))
                return FUNC0(EIO);
            pkt->stream_index = fourxm->video_stream_index;
            pkt->pts          = fourxm->video_pts;
            pkt->pos          = FUNC10(s->pb);
            FUNC11(pkt->data, header, 8);
            ret = FUNC7(s->pb, &pkt->data[8], size);

            if (ret < 0) {
                FUNC4(pkt);
            } else {
                packet_read = 1;
                FUNC5(pkt, ret + 8);
            }
            break;

        case snd__TAG:
            track_number = FUNC8(pb);
            FUNC9(pb, 4);
            size -= 8;

            if (track_number < fourxm->track_count &&
                fourxm->tracks[track_number].channels > 0) {
                ret = FUNC2(s->pb, pkt, size);
                if (ret < 0)
                    return FUNC0(EIO);
                pkt->stream_index =
                    fourxm->tracks[track_number].stream_index;
                pkt->pts    = fourxm->tracks[track_number].audio_pts;
                packet_read = 1;

                /* pts accounting */
                audio_frame_count = size;
                if (fourxm->tracks[track_number].adpcm)
                    audio_frame_count -= 2 * (fourxm->tracks[track_number].channels);
                audio_frame_count /= fourxm->tracks[track_number].channels;
                if (fourxm->tracks[track_number].adpcm) {
                    audio_frame_count *= 2;
                } else
                    audio_frame_count /=
                        (fourxm->tracks[track_number].bits / 8);
                fourxm->tracks[track_number].audio_pts += audio_frame_count;
            } else {
                FUNC9(pb, size);
            }
            break;

        default:
            FUNC9(pb, size);
            break;
        }
    }
    return ret;
}