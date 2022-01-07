
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {int len; int str; scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ duration; scalar_t__ pts; scalar_t__ pos; } ;
typedef int FFDemuxSubtitlesQueue ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 int ERR_CODE (int) ;
 int av_bprint_finalize (TYPE_2__*,int *) ;
 scalar_t__ avio_tell (int *) ;
 int expect_byte (int *,int*,char) ;
 TYPE_1__* ff_subtitles_queue_insert (int *,int ,int ,int ) ;
 int next_byte (int *,int*) ;
 int parse_boolean (int *,int*,int*) ;
 int parse_int (int *,int*,scalar_t__*) ;
 int parse_label (int *,int*,TYPE_2__*) ;
 int parse_string (int *,int*,TYPE_2__*,int) ;
 int skip_spaces (int *,int*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int parse_file(AVIOContext *pb, FFDemuxSubtitlesQueue *subs)
{
    int ret, cur_byte, start_of_par;
    AVBPrint label, content;
    int64_t pos, start, duration;
    AVPacket *pkt;

    next_byte(pb, &cur_byte);
    ret = expect_byte(pb, &cur_byte, '{');
    if (ret < 0)
        return AVERROR_INVALIDDATA;
    ret = parse_label(pb, &cur_byte, &label);
    if (ret < 0 || strcmp(label.str, "captions"))
        return AVERROR_INVALIDDATA;
    ret = expect_byte(pb, &cur_byte, '[');
    if (ret < 0)
        return AVERROR_INVALIDDATA;
    while (1) {
        content.size = 0;
        start = duration = AV_NOPTS_VALUE;
        ret = expect_byte(pb, &cur_byte, '{');
        if (ret < 0)
            return ret;
        pos = avio_tell(pb) - 1;
        while (1) {
            ret = parse_label(pb, &cur_byte, &label);
            if (ret < 0)
                return ret;
            if (!strcmp(label.str, "startOfParagraph")) {
                ret = parse_boolean(pb, &cur_byte, &start_of_par);
                if (ret < 0)
                    return ret;
            } else if (!strcmp(label.str, "content")) {
                ret = parse_string(pb, &cur_byte, &content, 1);
                if (ret < 0)
                    return ret;
            } else if (!strcmp(label.str, "startTime")) {
                ret = parse_int(pb, &cur_byte, &start);
                if (ret < 0)
                    return ret;
            } else if (!strcmp(label.str, "duration")) {
                ret = parse_int(pb, &cur_byte, &duration);
                if (ret < 0)
                    return ret;
            } else {
                return AVERROR_INVALIDDATA;
            }
            skip_spaces(pb, &cur_byte);
            if (cur_byte != ',')
                break;
            next_byte(pb, &cur_byte);
        }
        ret = expect_byte(pb, &cur_byte, '}');
        if (ret < 0)
            return ret;

        if (!content.size || start == AV_NOPTS_VALUE ||
            duration == AV_NOPTS_VALUE)
            return AVERROR_INVALIDDATA;
        pkt = ff_subtitles_queue_insert(subs, content.str, content.len, 0);
        if (!pkt)
            return AVERROR(ENOMEM);
        pkt->pos = pos;
        pkt->pts = start;
        pkt->duration = duration;
        av_bprint_finalize(&content, ((void*)0));

        skip_spaces(pb, &cur_byte);
        if (cur_byte != ',')
            break;
        next_byte(pb, &cur_byte);
    }
    ret = expect_byte(pb, &cur_byte, ']');
    if (ret < 0)
        return ret;
    ret = expect_byte(pb, &cur_byte, '}');
    if (ret < 0)
        return ret;
    skip_spaces(pb, &cur_byte);
    if (cur_byte != AVERROR_EOF)
        return ERR_CODE(cur_byte);
    return 0;
}
