
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_7__ {int n; void* duration; void* start_time; int file; } ;
struct TYPE_6__ {int nb_fragments; int fragments_size; int fragment_index; TYPE_2__** fragments; } ;
typedef TYPE_1__ OutputStream ;
typedef TYPE_2__ Fragment ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_2__* av_mallocz (int) ;
 int av_reallocp_array (TYPE_2__***,int,int) ;
 int av_strlcpy (int ,char const*,int) ;

__attribute__((used)) static int add_fragment(OutputStream *os, const char *file,
                        int64_t start_time, int64_t duration)
{
    Fragment *frag;
    if (duration == 0)
        duration = 1;
    if (os->nb_fragments >= os->fragments_size) {
        int ret;
        os->fragments_size = (os->fragments_size + 1) * 2;
        if ((ret = av_reallocp_array(&os->fragments, os->fragments_size,
                                     sizeof(*os->fragments))) < 0) {
            os->fragments_size = 0;
            os->nb_fragments = 0;
            return ret;
        }
    }
    frag = av_mallocz(sizeof(*frag));
    if (!frag)
        return AVERROR(ENOMEM);
    av_strlcpy(frag->file, file, sizeof(frag->file));
    frag->start_time = start_time;
    frag->duration = duration;
    frag->n = os->fragment_index;
    os->fragments[os->nb_fragments++] = frag;
    os->fragment_index++;
    return 0;
}
