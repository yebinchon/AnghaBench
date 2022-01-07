
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * streams; } ;
typedef TYPE_1__ AVFormatContext ;


 scalar_t__ av_strstart (char const*,char*,char const**) ;
 int real_parse_asm_rulebook (TYPE_1__*,int ,char const*) ;

void
ff_real_parse_sdp_a_line (AVFormatContext *s, int stream_index,
                          const char *line)
{
    const char *p = line;

    if (av_strstart(p, "ASMRuleBook:string;", &p))
        real_parse_asm_rulebook(s, s->streams[stream_index], p);
}
