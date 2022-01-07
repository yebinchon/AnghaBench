
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int * metadata; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVDictionaryEntry ;
typedef int AVDictionary ;


 double NAN ;
 TYPE_2__* av_dict_get (int *,char*,int *,int ) ;
 scalar_t__ strtoll (int ,int *,int) ;

__attribute__((used)) static double get_concatdec_select(AVFrame *frame, int64_t pts)
{
    AVDictionary *metadata = frame->metadata;
    AVDictionaryEntry *start_time_entry = av_dict_get(metadata, "lavf.concatdec.start_time", ((void*)0), 0);
    AVDictionaryEntry *duration_entry = av_dict_get(metadata, "lavf.concatdec.duration", ((void*)0), 0);
    if (start_time_entry) {
        int64_t start_time = strtoll(start_time_entry->value, ((void*)0), 10);
        if (pts >= start_time) {
            if (duration_entry) {
              int64_t duration = strtoll(duration_entry->value, ((void*)0), 10);
              if (pts < start_time + duration)
                  return -1;
              else
                  return 0;
            }
            return -1;
        }
        return 0;
    }
    return NAN;
}
