
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct event_info {int pos; } ;
typedef int ptrdiff_t ;
typedef int line ;
typedef int int64_t ;
struct TYPE_20__ {int len; } ;
struct TYPE_19__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_18__ {TYPE_1__* codecpar; } ;
struct TYPE_17__ {int q; } ;
struct TYPE_16__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ SRTContext ;
typedef int FFTextReader ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVBPrint ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_CODEC_ID_SUBRIP ;
 int ENOMEM ;
 int add_event (int *,TYPE_5__*,char*,struct event_info*,int) ;
 int av_bprint_finalize (TYPE_5__*,int *) ;
 int av_bprint_init (TYPE_5__*,int ,int ) ;
 int av_bprintf (TYPE_5__*,char*,char*) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int ff_subtitles_queue_finalize (TYPE_4__*,int *) ;
 int ff_subtitles_read_line (int *,char*,int) ;
 int ff_text_eof (int *) ;
 int ff_text_init_avio (TYPE_4__*,int *,int ) ;
 int ff_text_pos (int *) ;
 scalar_t__ get_event_info (char*,struct event_info*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int srt_read_header(AVFormatContext *s)
{
    SRTContext *srt = s->priv_data;
    AVBPrint buf;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    int res = 0;
    char line[4096], line_cache[4096];
    int has_event_info = 0;
    struct event_info ei;
    FFTextReader tr;
    ff_text_init_avio(s, &tr, s->pb);

    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 1000);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_SUBRIP;

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    line_cache[0] = 0;

    while (!ff_text_eof(&tr)) {
        struct event_info tmp_ei;
        const int64_t pos = ff_text_pos(&tr);
        ptrdiff_t len = ff_subtitles_read_line(&tr, line, sizeof(line));

        if (len < 0)
            break;

        if (!len || !line[0])
            continue;

        if (get_event_info(line, &tmp_ei) < 0) {
            char *pline;

            if (!has_event_info)
                continue;

            if (line_cache[0]) {


                av_bprintf(&buf, "%s\n", line_cache);
                line_cache[0] = 0;
            }





            if (strtol(line, &pline, 10) < 0 || line == pline)
                av_bprintf(&buf, "%s\n", line);
            else
                strcpy(line_cache, line);
        } else {
            if (has_event_info) {



                char *pline = ((void*)0);
                const int standalone_number = strtol(line_cache, &pline, 10) >= 0 && pline && !*pline;
                res = add_event(&srt->q, &buf, line_cache, &ei, !buf.len && !standalone_number);
                if (res < 0)
                    goto end;
            } else {
                has_event_info = 1;
            }
            tmp_ei.pos = pos;
            ei = tmp_ei;
        }
    }




    if (has_event_info) {
        res = add_event(&srt->q, &buf, line_cache, &ei, 1);
        if (res < 0)
            goto end;
    }

    ff_subtitles_queue_finalize(s, &srt->q);

end:
    av_bprint_finalize(&buf, ((void*)0));
    return res;
}
