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
typedef  int uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int pts; int stream_index; } ;
struct TYPE_8__ {scalar_t__ nframes; int avflag; int video_size; int audio_frame; int video_frame; } ;
typedef  TYPE_1__ BFIContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (char,char,char,char) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFormatContext * s, AVPacket * pkt)
{
    BFIContext *bfi = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret, audio_offset, video_offset, chunk_size, audio_size = 0;
    if (bfi->nframes == 0 || FUNC4(pb)) {
        return AVERROR_EOF;
    }

    /* If all previous chunks were completely read, then find a new one... */
    if (!bfi->avflag) {
        uint32_t state = 0;
        while(state != FUNC1('S','A','V','I')){
            if (FUNC4(pb))
                return FUNC0(EIO);
            state = 256*state + FUNC5(pb);
        }
        /* Now that the chunk's location is confirmed, we proceed... */
        chunk_size      = FUNC6(pb);
        FUNC6(pb);
        audio_offset    = FUNC6(pb);
        FUNC6(pb);
        video_offset    = FUNC6(pb);
        audio_size      = video_offset - audio_offset;
        bfi->video_size = chunk_size - video_offset;
        if (audio_size < 0 || bfi->video_size < 0) {
            FUNC3(s, AV_LOG_ERROR, "Invalid audio/video offsets or chunk size\n");
            return AVERROR_INVALIDDATA;
        }

        //Tossing an audio packet at the audio decoder.
        ret = FUNC2(pb, pkt, audio_size);
        if (ret < 0)
            return ret;

        pkt->pts          = bfi->audio_frame;
        bfi->audio_frame += ret;
    } else if (bfi->video_size > 0) {

        //Tossing a video packet at the video decoder.
        ret = FUNC2(pb, pkt, bfi->video_size);
        if (ret < 0)
            return ret;

        pkt->pts          = bfi->video_frame;
        bfi->video_frame += ret / bfi->video_size;

        /* One less frame to read. A cursory decrement. */
        bfi->nframes--;
    } else {
        /* Empty video packet */
        ret = FUNC0(EAGAIN);
    }

    bfi->avflag       = !bfi->avflag;
    pkt->stream_index = bfi->avflag;
    return ret;
}