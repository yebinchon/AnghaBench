
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int line ;
typedef int int64_t ;
struct TYPE_21__ {int nb_subs; TYPE_3__* subs; } ;
struct TYPE_20__ {TYPE_1__* priv_data; int * pb; } ;
struct TYPE_19__ {int duration; int pts; int data; int pos; } ;
struct TYPE_18__ {TYPE_12__* codecpar; } ;
struct TYPE_17__ {int timeres; TYPE_9__ q; int shift; } ;
struct TYPE_16__ {int codec_id; int codec_type; } ;
typedef TYPE_1__ JACOsubContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_CODEC_ID_JACOSUB ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int JSS_MAX_LINESIZE ;
 int av_bprint_init (int *,scalar_t__,int) ;
 int av_bprintf (int *,char*,char const*) ;
 scalar_t__ av_strncasecmp (char const*,int*,int) ;
 TYPE_2__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_feof (int *) ;
 int avio_tell (int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int** cmds ;
 int ff_bprint_to_codecpar_extradata (TYPE_12__*,int *) ;
 int ff_get_line (int *,char*,int) ;
 int ff_subtitles_queue_finalize (TYPE_4__*,TYPE_9__*) ;
 TYPE_3__* ff_subtitles_queue_insert (TYPE_9__*,char*,int,int) ;
 int get_jss_cmd (char const) ;
 int get_shift (int,char const*) ;
 int jacosub_read_close (TYPE_4__*) ;
 char* jss_skip_whitespace (char const*) ;
 int read_ts (TYPE_1__*,int ,int *,int *) ;
 int strcmp (char*,char*) ;
 int strlen (int*) ;
 int strtol (char const*,int *,int) ;
 scalar_t__ timed_line (char const*) ;

__attribute__((used)) static int jacosub_read_header(AVFormatContext *s)
{
    AVBPrint header;
    AVIOContext *pb = s->pb;
    char line[JSS_MAX_LINESIZE];
    JACOsubContext *jacosub = s->priv_data;
    int shift_set = 0;
    int merge_line = 0;
    int i, ret;

    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_JACOSUB;

    jacosub->timeres = 30;

    av_bprint_init(&header, 1024+AV_INPUT_BUFFER_PADDING_SIZE, 4096);

    while (!avio_feof(pb)) {
        int cmd_len;
        const char *p = line;
        int64_t pos = avio_tell(pb);
        int len = ff_get_line(pb, line, sizeof(line));

        p = jss_skip_whitespace(p);


        if (merge_line || timed_line(p)) {
            AVPacket *sub;

            sub = ff_subtitles_queue_insert(&jacosub->q, line, len, merge_line);
            if (!sub)
                return AVERROR(ENOMEM);
            sub->pos = pos;
            merge_line = len > 1 && !strcmp(&line[len - 2], "\\\n");
            continue;
        }


        if (*p != '#')
            continue;
        p++;
        i = get_jss_cmd(p[0]);
        if (i == -1)
            continue;


        cmd_len = strlen(cmds[i]);
        if (av_strncasecmp(p, cmds[i], cmd_len) == 0)
            p += cmd_len;
        else
            p++;
        p = jss_skip_whitespace(p);


        switch (cmds[i][0]) {
        case 'S':
            if (!shift_set) {
                jacosub->shift = get_shift(jacosub->timeres, p);
                shift_set = 1;
            }
            av_bprintf(&header, "#S %s", p);
            break;
        case 'T':
            jacosub->timeres = strtol(p, ((void*)0), 10);
            if (!jacosub->timeres)
                jacosub->timeres = 30;
            else
                av_bprintf(&header, "#T %s", p);
            break;
        }
    }


    ret = ff_bprint_to_codecpar_extradata(st->codecpar, &header);
    if (ret < 0)
        goto fail;



    for (i = 0; i < jacosub->q.nb_subs; i++) {
        AVPacket *sub = &jacosub->q.subs[i];
        read_ts(jacosub, sub->data, &sub->pts, &sub->duration);
    }
    ff_subtitles_queue_finalize(s, &jacosub->q);

    return 0;
fail:
    jacosub_read_close(s);
    return ret;
}
