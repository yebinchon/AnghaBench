
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ff; int drop; scalar_t__ color; int ss; int mm; int hh; } ;
typedef TYPE_1__ GXFTimecode ;
typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 int sscanf (char const*,char*,int *,int *,int *,char*,int*) ;

__attribute__((used)) static int gxf_init_timecode(AVFormatContext *s, GXFTimecode *tc, const char *tcstr, int fields)
{
    char c;

    if (sscanf(tcstr, "%d:%d:%d%c%d", &tc->hh, &tc->mm, &tc->ss, &c, &tc->ff) != 5) {
        av_log(s, AV_LOG_ERROR, "unable to parse timecode, "
                                "syntax: hh:mm:ss[:;.]ff\n");
        return -1;
    }

    tc->color = 0;
    tc->drop = c != ':';

    if (fields == 2)
        tc->ff = tc->ff * 2;

    return 0;
}
