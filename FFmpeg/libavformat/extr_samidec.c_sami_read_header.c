
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;


typedef scalar_t__ int64_t ;
struct TYPE_25__ {int str; int len; } ;
struct TYPE_24__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_23__ {int duration; int pts; scalar_t__ pos; } ;
struct TYPE_22__ {TYPE_11__* codecpar; } ;
struct TYPE_21__ {int q; } ;
struct TYPE_20__ {int codec_id; int codec_type; } ;
typedef TYPE_1__ SAMIContext ;
typedef int FFTextReader ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVBPrint ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_CODEC_ID_SAMI ;
 int ENOMEM ;
 int av_bprint_clear (TYPE_5__*) ;
 int av_bprint_finalize (TYPE_5__*,int *) ;
 int av_bprint_init (TYPE_5__*,int ,int ) ;
 int av_bprintf (TYPE_5__*,char*,int ) ;
 int av_strncasecmp (int ,char*,int) ;
 TYPE_2__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int ff_bprint_to_codecpar_extradata (TYPE_11__*,TYPE_5__*) ;
 int ff_smil_extract_next_text_chunk (int *,TYPE_5__*,char*) ;
 char* ff_smil_get_attr_ptr (int ,char*) ;
 int ff_subtitles_queue_finalize (TYPE_4__*,int *) ;
 TYPE_3__* ff_subtitles_queue_insert (int *,int ,int ,int) ;
 int ff_text_eof (int *) ;
 int ff_text_init_avio (TYPE_4__*,int *,int ) ;
 scalar_t__ ff_text_pos (int *) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int sami_read_header(AVFormatContext *s)
{
    SAMIContext *sami = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    AVBPrint buf, hdr_buf;
    char c = 0;
    int res = 0, got_first_sync_point = 0;
    FFTextReader tr;
    ff_text_init_avio(s, &tr, s->pb);

    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 1000);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_SAMI;

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);
    av_bprint_init(&hdr_buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    while (!ff_text_eof(&tr)) {
        AVPacket *sub;
        const int64_t pos = ff_text_pos(&tr) - (c != 0);
        int is_sync, is_body, n = ff_smil_extract_next_text_chunk(&tr, &buf, &c);

        if (n == 0)
            break;

        is_body = !av_strncasecmp(buf.str, "</BODY", 6);
        if (is_body) {
             av_bprint_clear(&buf);
             break;
        }

        is_sync = !av_strncasecmp(buf.str, "<SYNC", 5);
        if (is_sync)
            got_first_sync_point = 1;

        if (!got_first_sync_point) {
            av_bprintf(&hdr_buf, "%s", buf.str);
        } else {
            sub = ff_subtitles_queue_insert(&sami->q, buf.str, buf.len, !is_sync);
            if (!sub) {
                res = AVERROR(ENOMEM);
                goto end;
            }
            if (is_sync) {
                const char *p = ff_smil_get_attr_ptr(buf.str, "Start");
                sub->pos = pos;
                sub->pts = p ? strtol(p, ((void*)0), 10) : 0;
                sub->duration = -1;
            }
        }
        av_bprint_clear(&buf);
    }

    res = ff_bprint_to_codecpar_extradata(st->codecpar, &hdr_buf);
    if (res < 0)
        goto end;

    ff_subtitles_queue_finalize(s, &sami->q);

end:
    av_bprint_finalize(&buf, ((void*)0));
    return res;
}
