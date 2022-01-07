
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * streams; } ;
typedef int PayloadContext ;
typedef TYPE_1__ AVFormatContext ;


 scalar_t__ av_strstart (char const*,char*,char const**) ;
 int ff_parse_fmtp (TYPE_1__*,int ,int *,char const*,int ) ;
 int parse_fmtp ;

__attribute__((used)) static int parse_sdp_line(AVFormatContext *s, int st_index,
                          PayloadContext *data, const char *line)
{
    const char *p;

    if (st_index < 0)
        return 0;

    if (av_strstart(line, "fmtp:", &p))
        return ff_parse_fmtp(s, s->streams[st_index], data, p, parse_fmtp);

    return 0;
}
