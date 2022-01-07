
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


struct TYPE_20__ {int str; } ;
struct TYPE_19__ {int * metadata; } ;
struct TYPE_18__ {int nb_chapters; TYPE_2__** chapters; int duration; scalar_t__ start_time; int pb; int * metadata; } ;
struct TYPE_17__ {int * metadata; TYPE_1__* codecpar; } ;
struct TYPE_16__ {int time_base; int end; } ;
struct TYPE_15__ {int codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;
typedef int AVDictionary ;
typedef TYPE_5__ AVChapter ;
typedef TYPE_6__ AVBPrint ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_DATA ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_CODEC_ID_FFMETADATA ;
 int AV_TIME_BASE_Q ;
 int ENOMEM ;
 int ID_CHAPTER ;
 int ID_STREAM ;
 int av_bprint_finalize (TYPE_6__*,int *) ;
 int av_bprint_init (TYPE_6__*,int ,int ) ;
 int av_rescale_q (int ,int ,int ) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_feof (int ) ;
 int get_bprint_line (int ,TYPE_6__*) ;
 int memcmp (int ,int ,int ) ;
 TYPE_5__* read_chapter (TYPE_4__*) ;
 int read_tag (int ,int **) ;
 int strlen (int ) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    AVDictionary **m = &s->metadata;
    AVBPrint bp;

    av_bprint_init(&bp, 0, AV_BPRINT_SIZE_UNLIMITED);

    while(!avio_feof(s->pb)) {
        get_bprint_line(s->pb, &bp);

        if (!memcmp(bp.str, ID_STREAM, strlen(ID_STREAM))) {
            AVStream *st = avformat_new_stream(s, ((void*)0));

            if (!st)
                return AVERROR(ENOMEM);

            st->codecpar->codec_type = AVMEDIA_TYPE_DATA;
            st->codecpar->codec_id = AV_CODEC_ID_FFMETADATA;

            m = &st->metadata;
        } else if (!memcmp(bp.str, ID_CHAPTER, strlen(ID_CHAPTER))) {
            AVChapter *ch = read_chapter(s);

            if (!ch)
                return AVERROR(ENOMEM);

            m = &ch->metadata;
        } else
            read_tag(bp.str, m);
    }

    av_bprint_finalize(&bp, ((void*)0));

    s->start_time = 0;
    if (s->nb_chapters)
        s->duration = av_rescale_q(s->chapters[s->nb_chapters - 1]->end,
                                   s->chapters[s->nb_chapters - 1]->time_base,
                                   AV_TIME_BASE_Q);

    return 0;
}
