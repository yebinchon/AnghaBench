
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__** streams; } ;
struct TYPE_9__ {int nb_streams; size_t* streams; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int sample_rate; } ;
typedef TYPE_3__ AdaptationSet ;
typedef TYPE_4__ AVFormatContext ;



__attribute__((used)) static int check_matching_sample_rate(AVFormatContext *s, AdaptationSet *as) {
    int first_sample_rate, i;
    if (as->nb_streams < 2) return 1;
    first_sample_rate = s->streams[as->streams[0]]->codecpar->sample_rate;
    for (i = 1; i < as->nb_streams; i++)
        if (first_sample_rate != s->streams[as->streams[i]]->codecpar->sample_rate)
          return 0;
    return 1;
}
