
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
struct TYPE_7__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_6__ {int metadata; } ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVDictionaryEntry ;


 int DURATION ;
 double atof (int ) ;
 TYPE_3__* av_dict_get (int ,int ,int *,int ) ;

__attribute__((used)) static double get_duration(AVFormatContext *s)
{
    int i = 0;
    double max = 0.0;
    for (i = 0; i < s->nb_streams; i++) {
        AVDictionaryEntry *duration = av_dict_get(s->streams[i]->metadata,
                                                  DURATION, ((void*)0), 0);
        if (!duration || atof(duration->value) < 0) continue;
        if (atof(duration->value) > max) max = atof(duration->value);
    }
    return max / 1000;
}
