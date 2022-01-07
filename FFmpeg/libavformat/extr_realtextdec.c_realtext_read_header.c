
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_23__ {int str; scalar_t__ len; } ;
struct TYPE_22__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_21__ {int pts; int duration; scalar_t__ pos; } ;
struct TYPE_20__ {TYPE_1__* codecpar; } ;
struct TYPE_19__ {int q; } ;
struct TYPE_18__ {scalar_t__ extradata_size; scalar_t__ extradata; int codec_id; int codec_type; } ;
typedef TYPE_2__ RealTextContext ;
typedef int FFTextReader ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_CODEC_ID_REALTEXT ;
 int ENOMEM ;
 int av_bprint_clear (TYPE_6__*) ;
 int av_bprint_finalize (TYPE_6__*,int *) ;
 int av_bprint_init (TYPE_6__*,int ,int ) ;
 scalar_t__ av_strdup (int ) ;
 int av_strncasecmp (int ,char*,int) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int ff_smil_extract_next_text_chunk (int *,TYPE_6__*,char*) ;
 char* ff_smil_get_attr_ptr (int ,char*) ;
 int ff_subtitles_queue_clean (int *) ;
 int ff_subtitles_queue_finalize (TYPE_5__*,int *) ;
 TYPE_4__* ff_subtitles_queue_insert (int *,int ,scalar_t__,int) ;
 int ff_text_eof (int *) ;
 int ff_text_init_avio (TYPE_5__*,int *,int ) ;
 scalar_t__ ff_text_pos (int *) ;
 int read_ts (char const*) ;

__attribute__((used)) static int realtext_read_header(AVFormatContext *s)
{
    RealTextContext *rt = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    AVBPrint buf;
    char c = 0;
    int res = 0, duration = read_ts("60");
    FFTextReader tr;
    ff_text_init_avio(s, &tr, s->pb);

    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_REALTEXT;

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    while (!ff_text_eof(&tr)) {
        AVPacket *sub;
        const int64_t pos = ff_text_pos(&tr) - (c != 0);
        int n = ff_smil_extract_next_text_chunk(&tr, &buf, &c);

        if (n == 0)
            break;

        if (!av_strncasecmp(buf.str, "<window", 7)) {

            const char *p = ff_smil_get_attr_ptr(buf.str, "duration");

            if (st->codecpar->extradata) {
                res = AVERROR_INVALIDDATA;
                goto end;
            }
            if (p)
                duration = read_ts(p);
            st->codecpar->extradata = av_strdup(buf.str);
            if (!st->codecpar->extradata) {
                res = AVERROR(ENOMEM);
                goto end;
            }
            st->codecpar->extradata_size = buf.len + 1;
        } else {


            int merge = !av_strncasecmp(buf.str, "<time", 5) ? 0 : 1;
            sub = ff_subtitles_queue_insert(&rt->q, buf.str, buf.len, merge);
            if (!sub) {
                res = AVERROR(ENOMEM);
                goto end;
            }
            if (!merge) {
                const char *begin = ff_smil_get_attr_ptr(buf.str, "begin");
                const char *end = ff_smil_get_attr_ptr(buf.str, "end");

                sub->pos = pos;
                sub->pts = begin ? read_ts(begin) : 0;
                sub->duration = end ? (read_ts(end) - sub->pts) : duration;
            }
        }
        av_bprint_clear(&buf);
    }
    ff_subtitles_queue_finalize(s, &rt->q);

end:
    av_bprint_finalize(&buf, ((void*)0));
    if (res < 0)
        ff_subtitles_queue_clean(&rt->q);
    return res;
}
