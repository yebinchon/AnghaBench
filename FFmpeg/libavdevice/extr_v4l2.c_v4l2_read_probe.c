
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filename; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ av_strstart (int ,char*,int *) ;

__attribute__((used)) static int v4l2_read_probe(const AVProbeData *p)
{
    if (av_strstart(p->filename, "/dev/video", ((void*)0)))
        return AVPROBE_SCORE_MAX - 1;
    return 0;
}
