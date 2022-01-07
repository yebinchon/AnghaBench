
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int time_base; } ;
struct TYPE_8__ {int time_base; } ;
struct TYPE_7__ {int stream_index; int duration; int size; scalar_t__ dts; scalar_t__ pts; int * data; int flags; } ;
typedef TYPE_1__ AVPacket ;


 scalar_t__ AV_PICTURE_TYPE_B ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 scalar_t__ AV_PICTURE_TYPE_P ;
 int AV_PKT_FLAG_KEY ;
 int AV_WB32 (int *,scalar_t__) ;
 scalar_t__ audio_dts ;
 int audio_duration ;
 TYPE_6__* audio_st ;
 scalar_t__ av_compare_ts (scalar_t__,int ,scalar_t__,int ) ;
 int av_init_packet (TYPE_1__*) ;
 int av_interleaved_write_frame (int ,TYPE_1__*) ;
 int av_write_frame (int ,TYPE_1__*) ;
 int bframes ;
 scalar_t__ clear_duration ;
 int ctx ;
 scalar_t__ do_interleave ;
 int duration ;
 int fake_pkt_duration ;
 int frames ;
 int gop_size ;
 scalar_t__ last_picture ;
 scalar_t__ next_p_pts ;
 scalar_t__ skip_write ;
 scalar_t__ skip_write_audio ;
 scalar_t__ video_dts ;
 TYPE_2__* video_st ;

__attribute__((used)) static void mux_frames(int n, int c)
{
    int end_frames = frames + n;
    while (1) {
        AVPacket pkt;
        uint8_t pktdata[8] = { 0 };
        av_init_packet(&pkt);

        if (av_compare_ts(audio_dts, audio_st->time_base, video_dts, video_st->time_base) < 0) {
            pkt.dts = pkt.pts = audio_dts;
            pkt.stream_index = 1;
            pkt.duration = audio_duration;
            audio_dts += audio_duration;
        } else {
            if (frames == end_frames)
                break;
            pkt.dts = video_dts;
            pkt.stream_index = 0;
            pkt.duration = duration;
            if ((frames % gop_size) == 0) {
                pkt.flags |= AV_PKT_FLAG_KEY;
                last_picture = AV_PICTURE_TYPE_I;
                pkt.pts = pkt.dts + duration;
                video_dts = pkt.pts;
            } else {
                if (last_picture == AV_PICTURE_TYPE_P) {
                    last_picture = AV_PICTURE_TYPE_B;
                    pkt.pts = pkt.dts;
                    video_dts = next_p_pts;
                } else {
                    last_picture = AV_PICTURE_TYPE_P;
                    if (((frames + 1) % gop_size) == 0) {
                        pkt.pts = pkt.dts + duration;
                        video_dts = pkt.pts;
                    } else {
                        next_p_pts = pkt.pts = pkt.dts + 2 * duration;
                        video_dts += duration;
                    }
                }
            }
            if (!bframes)
                pkt.pts = pkt.dts;
            if (fake_pkt_duration)
                pkt.duration = fake_pkt_duration;
            frames++;
        }

        if (clear_duration)
            pkt.duration = 0;
        AV_WB32(pktdata + 4, pkt.pts);
        pkt.data = pktdata;
        pkt.size = 8;
        if (skip_write)
            continue;
        if (skip_write_audio && pkt.stream_index == 1)
            continue;

        if (c) {
            pkt.pts += (1LL<<32);
            pkt.dts += (1LL<<32);
        }

        if (do_interleave)
            av_interleaved_write_frame(ctx, &pkt);
        else
            av_write_frame(ctx, &pkt);
    }
}
