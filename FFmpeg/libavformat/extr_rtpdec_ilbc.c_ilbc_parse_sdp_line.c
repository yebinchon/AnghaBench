
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__** streams; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int block_align; } ;
typedef int PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;
 scalar_t__ av_strstart (char const*,char*,char const**) ;
 int ff_parse_fmtp (TYPE_3__*,TYPE_2__*,int *,char const*,int ) ;
 int ilbc_parse_fmtp ;

__attribute__((used)) static int ilbc_parse_sdp_line(AVFormatContext *s, int st_index,
                               PayloadContext *data, const char *line)
{
    const char *p;
    AVStream *st;

    if (st_index < 0)
        return 0;
    st = s->streams[st_index];

    if (av_strstart(line, "fmtp:", &p)) {
        int ret = ff_parse_fmtp(s, st, data, p, ilbc_parse_fmtp);
        if (ret < 0)
            return ret;
        if (!st->codecpar->block_align) {
            av_log(s, AV_LOG_ERROR, "No iLBC mode set\n");
            return AVERROR(EINVAL);
        }
    }
    return 0;
}
