
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_11__ ;


typedef void* int64_t ;
struct TYPE_23__ {int keep_duplicates; } ;
struct TYPE_29__ {TYPE_11__ q; } ;
struct TYPE_28__ {int len; int * str; } ;
struct TYPE_27__ {int pb; TYPE_5__* priv_data; } ;
struct TYPE_26__ {int duration; void* pts; void* pos; } ;
struct TYPE_25__ {TYPE_14__* codecpar; } ;
struct TYPE_24__ {int codec_id; int codec_type; } ;
typedef int FFTextReader ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVBPrint ;
typedef TYPE_5__ ASSContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_CODEC_ID_ASS ;
 void* AV_NOPTS_VALUE ;
 int ENOMEM ;
 int av_bprint_finalize (TYPE_4__*,int *) ;
 int av_bprint_init (TYPE_4__*,int ,int ) ;
 int av_bprintf (TYPE_4__*,char*,int *) ;
 TYPE_1__* avformat_new_stream (TYPE_3__*,int *) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;
 int ff_bprint_to_codecpar_extradata (TYPE_14__*,TYPE_4__*) ;
 int ff_subtitles_queue_finalize (TYPE_3__*,TYPE_11__*) ;
 TYPE_2__* ff_subtitles_queue_insert (TYPE_11__*,int *,int ,int ) ;
 int ff_text_init_avio (TYPE_3__*,int *,int ) ;
 void* get_line (TYPE_4__*,int *) ;
 scalar_t__ read_dialogue (TYPE_5__*,TYPE_4__*,int *,void**,int*) ;

__attribute__((used)) static int ass_read_header(AVFormatContext *s)
{
    ASSContext *ass = s->priv_data;
    AVBPrint header, line, rline;
    int res = 0;
    AVStream *st;
    FFTextReader tr;
    ff_text_init_avio(s, &tr, s->pb);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_ASS;

    av_bprint_init(&header, 0, AV_BPRINT_SIZE_UNLIMITED);
    av_bprint_init(&line, 0, AV_BPRINT_SIZE_UNLIMITED);
    av_bprint_init(&rline, 0, AV_BPRINT_SIZE_UNLIMITED);

    ass->q.keep_duplicates = 1;

    for (;;) {
        int64_t pos = get_line(&line, &tr);
        int64_t ts_start = AV_NOPTS_VALUE;
        int duration = -1;
        AVPacket *sub;

        if (!line.str[0])
            break;

        if (read_dialogue(ass, &rline, line.str, &ts_start, &duration) < 0) {
            av_bprintf(&header, "%s", line.str);
            continue;
        }
        sub = ff_subtitles_queue_insert(&ass->q, rline.str, rline.len, 0);
        if (!sub) {
            res = AVERROR(ENOMEM);
            goto end;
        }
        sub->pos = pos;
        sub->pts = ts_start;
        sub->duration = duration;
    }

    res = ff_bprint_to_codecpar_extradata(st->codecpar, &header);
    if (res < 0)
        goto end;

    ff_subtitles_queue_finalize(s, &ass->q);

end:
    av_bprint_finalize(&header, ((void*)0));
    av_bprint_finalize(&line, ((void*)0));
    av_bprint_finalize(&rline, ((void*)0));
    return res;
}
