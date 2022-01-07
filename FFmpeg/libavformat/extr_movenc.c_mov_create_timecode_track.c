
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_20__ {TYPE_4__** streams; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int stream_index; int size; int data; int flags; } ;
struct TYPE_18__ {int avg_frame_rate; } ;
struct TYPE_17__ {int flags; int start; } ;
struct TYPE_16__ {TYPE_1__* tracks; int mode; } ;
struct TYPE_15__ {int src_track; TYPE_4__* st; int tag; TYPE_13__* par; int timecode_flags; int timescale; int mode; } ;
struct TYPE_14__ {int codec_tag; int codec_type; } ;
typedef TYPE_1__ MOVTrack ;
typedef TYPE_2__ MOVMuxContext ;
typedef TYPE_3__ AVTimecode ;
typedef TYPE_4__ AVStream ;
typedef int AVRational ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_DATA ;
 int AV_PKT_FLAG_KEY ;
 int AV_TIMECODE_FLAG_DROPFRAME ;
 int AV_WB32 (int ,int ) ;
 int ENOMEM ;
 int MKTAG (char,char,char,char) ;
 int MOV_TIMECODE_FLAG_DROPFRAME ;
 int av_free (int ) ;
 int av_inv_q (int ) ;
 int av_malloc (int) ;
 TYPE_13__* avcodec_parameters_alloc () ;
 int ff_mov_write_packet (TYPE_6__*,TYPE_5__*) ;
 int find_fps (TYPE_6__*,TYPE_4__*) ;

__attribute__((used)) static int mov_create_timecode_track(AVFormatContext *s, int index, int src_index, AVTimecode tc)
{
    int ret;
    MOVMuxContext *mov = s->priv_data;
    MOVTrack *track = &mov->tracks[index];
    AVStream *src_st = s->streams[src_index];
    AVPacket pkt = {.stream_index = index, .flags = AV_PKT_FLAG_KEY, .size = 4};
    AVRational rate = find_fps(s, src_st);


    track->mode = mov->mode;
    track->tag = MKTAG('t','m','c','d');
    track->src_track = src_index;
    track->timescale = mov->tracks[src_index].timescale;
    if (tc.flags & AV_TIMECODE_FLAG_DROPFRAME)
        track->timecode_flags |= MOV_TIMECODE_FLAG_DROPFRAME;


    track->st = src_st;


    track->par = avcodec_parameters_alloc();
    if (!track->par)
        return AVERROR(ENOMEM);
    track->par->codec_type = AVMEDIA_TYPE_DATA;
    track->par->codec_tag = track->tag;
    track->st->avg_frame_rate = av_inv_q(rate);


    pkt.data = av_malloc(pkt.size);
    if (!pkt.data)
        return AVERROR(ENOMEM);
    AV_WB32(pkt.data, tc.start);
    ret = ff_mov_write_packet(s, &pkt);
    av_free(pkt.data);
    return ret;
}
