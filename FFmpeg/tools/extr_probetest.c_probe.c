
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {int flags; int (* read_probe ) (int *) ;char* name; } ;
typedef int AVProbeData ;
typedef TYPE_1__ AVInputFormat ;


 int AVFMT_NOFILE ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_READ_TIME () ;
 TYPE_1__* av_demuxer_iterate (void**) ;
 int failures ;
 int fprintf (int ,char*,char*,int,int,int,int) ;
 int* score_array ;
 int single_format ;
 int stderr ;
 int strcmp (int ,char*) ;
 int stub1 (int *) ;
 int * time_array ;

__attribute__((used)) static void probe(AVProbeData *pd, int type, int p, int size)
{
    int i = 0;
    const AVInputFormat *fmt = ((void*)0);
    void *fmt_opaque = ((void*)0);

    while ((fmt = av_demuxer_iterate(&fmt_opaque))) {
        if (fmt->flags & AVFMT_NOFILE)
            continue;
        if (fmt->read_probe &&
            (!single_format || !strcmp(single_format, fmt->name))
        ) {
            int score;
            int64_t start = AV_READ_TIME();
            score = fmt->read_probe(pd);
            time_array[i] += AV_READ_TIME() - start;
            if (score > score_array[i] && score > AVPROBE_SCORE_MAX / 4) {
                score_array[i] = score;
                fprintf(stderr,
                        "Failure of %s probing code with score=%d type=%d p=%X size=%d\n",
                        fmt->name, score, type, p, size);
                failures++;
            }
        }
        i++;
    }
}
