
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * streams; } ;
typedef int AVTimecode ;
typedef TYPE_1__ AVFormatContext ;


 int av_timecode_init_from_string (int *,int ,char const*,TYPE_1__*) ;
 int find_fps (TYPE_1__*,int ) ;

__attribute__((used)) static int mov_check_timecode_track(AVFormatContext *s, AVTimecode *tc, int src_index, const char *tcstr)
{
    int ret;


    ret = av_timecode_init_from_string(tc, find_fps(s, s->streams[src_index]), tcstr, s);
    return ret;
}
