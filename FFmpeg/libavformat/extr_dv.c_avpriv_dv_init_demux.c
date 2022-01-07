
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_8__ {TYPE_4__* vst; int * fctx; } ;
struct TYPE_7__ {int bit_rate; int codec_id; int codec_type; } ;
typedef TYPE_2__ DVDemuxContext ;
typedef int AVFormatContext ;


 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_DVVIDEO ;
 int av_free (TYPE_2__*) ;
 TYPE_2__* av_mallocz (int) ;
 TYPE_4__* avformat_new_stream (int *,int *) ;

DVDemuxContext *avpriv_dv_init_demux(AVFormatContext *s)
{
    DVDemuxContext *c;

    c = av_mallocz(sizeof(DVDemuxContext));
    if (!c)
        return ((void*)0);

    c->vst = avformat_new_stream(s, ((void*)0));
    if (!c->vst) {
        av_free(c);
        return ((void*)0);
    }

    c->fctx = s;
    c->vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    c->vst->codecpar->codec_id = AV_CODEC_ID_DVVIDEO;
    c->vst->codecpar->bit_rate = 25000000;
    c->vst->start_time = 0;

    return c;
}
