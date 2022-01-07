
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef scalar_t__ int64_t ;
struct TYPE_16__ {int den; void* num; } ;
struct TYPE_18__ {int version; int compcount; int* components; int has_audio; int audio_stream_index; int video_stream_index; TYPE_3__* vst; void* framecnt; TYPE_14__ fps; void* compoff; void* first_frame; void* next_frame; void* first_framesz; void* next_framesz; void* last_frame; } ;
typedef TYPE_2__ ThpDemuxContext ;
struct TYPE_21__ {TYPE_4__* pb; TYPE_2__* priv_data; } ;
struct TYPE_20__ {scalar_t__ maxsize; } ;
struct TYPE_19__ {int index; TYPE_1__* codecpar; void* duration; void* nb_frames; } ;
struct TYPE_17__ {void* sample_rate; void* channels; scalar_t__ codec_tag; int codec_id; int codec_type; void* height; void* width; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_ADPCM_THP ;
 int AV_CODEC_ID_THP ;
 int ENOMEM ;
 int INT_MAX ;
 int SEEK_SET ;
 TYPE_14__ av_d2q (int ,int ) ;
 int av_int2float (void*) ;
 void* av_q2d (TYPE_14__) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 void* avio_rb32 (TYPE_4__*) ;
 int avio_read (TYPE_4__*,int*,int) ;
 int avio_seek (TYPE_4__*,void*,int ) ;
 scalar_t__ avio_size (TYPE_4__*) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,void*) ;

__attribute__((used)) static int thp_read_header(AVFormatContext *s)
{
    ThpDemuxContext *thp = s->priv_data;
    AVStream *st;
    AVIOContext *pb = s->pb;
    int64_t fsize= avio_size(pb);
    int i;


                           avio_rb32(pb);
    thp->version = avio_rb32(pb);

                           avio_rb32(pb);
                           avio_rb32(pb);

    thp->fps = av_d2q(av_int2float(avio_rb32(pb)), INT_MAX);
    thp->framecnt = avio_rb32(pb);
    thp->first_framesz = avio_rb32(pb);
    pb->maxsize = avio_rb32(pb);
    if(fsize>0 && (!pb->maxsize || fsize < pb->maxsize))
        pb->maxsize= fsize;

    thp->compoff = avio_rb32(pb);
                           avio_rb32(pb);
    thp->first_frame = avio_rb32(pb);
    thp->last_frame = avio_rb32(pb);

    thp->next_framesz = thp->first_framesz;
    thp->next_frame = thp->first_frame;


    avio_seek (pb, thp->compoff, SEEK_SET);
    thp->compcount = avio_rb32(pb);


    avio_read(pb, thp->components, 16);

    for (i = 0; i < thp->compcount; i++) {
        if (thp->components[i] == 0) {
            if (thp->vst)
                break;


            st = avformat_new_stream(s, ((void*)0));
            if (!st)
                return AVERROR(ENOMEM);



            avpriv_set_pts_info(st, 64, thp->fps.den, thp->fps.num);
            st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
            st->codecpar->codec_id = AV_CODEC_ID_THP;
            st->codecpar->codec_tag = 0;
            st->codecpar->width = avio_rb32(pb);
            st->codecpar->height = avio_rb32(pb);
            st->codecpar->sample_rate = av_q2d(thp->fps);
            st->nb_frames =
            st->duration = thp->framecnt;
            thp->vst = st;
            thp->video_stream_index = st->index;

            if (thp->version == 0x11000)
                avio_rb32(pb);
        } else if (thp->components[i] == 1) {
            if (thp->has_audio != 0)
                break;


            st = avformat_new_stream(s, ((void*)0));
            if (!st)
                return AVERROR(ENOMEM);

            st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            st->codecpar->codec_id = AV_CODEC_ID_ADPCM_THP;
            st->codecpar->codec_tag = 0;
            st->codecpar->channels = avio_rb32(pb);
            st->codecpar->sample_rate = avio_rb32(pb);
            st->duration = avio_rb32(pb);

            avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

            thp->audio_stream_index = st->index;
            thp->has_audio = 1;
        }
    }

    return 0;
}
