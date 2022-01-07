
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int value; } ;
struct TYPE_10__ {TYPE_1__** streams; } ;
struct TYPE_9__ {size_t* streams; int nb_streams; } ;
struct TYPE_8__ {int metadata; } ;
typedef TYPE_2__ AdaptationSet ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;


 int CUE_TIMESTAMPS ;
 TYPE_4__* av_dict_get (int ,int ,int *,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int subsegment_alignment(AVFormatContext *s, AdaptationSet *as) {
    int i;
    AVDictionaryEntry *gold = av_dict_get(s->streams[as->streams[0]]->metadata,
                                          CUE_TIMESTAMPS, ((void*)0), 0);
    if (!gold) return 0;
    for (i = 1; i < as->nb_streams; i++) {
        AVDictionaryEntry *ts = av_dict_get(s->streams[as->streams[i]]->metadata,
                                            CUE_TIMESTAMPS, ((void*)0), 0);
        if (!ts || strncmp(gold->value, ts->value, strlen(gold->value))) return 0;
    }
    return 1;
}
