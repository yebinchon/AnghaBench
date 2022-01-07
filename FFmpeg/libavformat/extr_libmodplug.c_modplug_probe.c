
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; int filename; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 scalar_t__ av_match_ext (int ,int ) ;
 int modplug_extensions ;

__attribute__((used)) static int modplug_probe(const AVProbeData *p)
{
    if (av_match_ext(p->filename, modplug_extensions)) {
        if (p->buf_size < 16384)
            return AVPROBE_SCORE_EXTENSION/2-1;
        else
            return AVPROBE_SCORE_EXTENSION;
    }
    return 0;
}
