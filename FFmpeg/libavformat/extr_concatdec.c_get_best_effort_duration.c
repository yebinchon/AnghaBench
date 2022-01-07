
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ duration; } ;
struct TYPE_5__ {scalar_t__ user_duration; scalar_t__ outpoint; scalar_t__ file_inpoint; scalar_t__ file_start_time; scalar_t__ next_dts; } ;
typedef TYPE_1__ ConcatFile ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;

__attribute__((used)) static int64_t get_best_effort_duration(ConcatFile *file, AVFormatContext *avf)
{
    if (file->user_duration != AV_NOPTS_VALUE)
        return file->user_duration;
    if (file->outpoint != AV_NOPTS_VALUE)
        return file->outpoint - file->file_inpoint;
    if (avf->duration > 0)
        return avf->duration - (file->file_inpoint - file->file_start_time);
    if (file->next_dts != AV_NOPTS_VALUE)
        return file->next_dts - file->file_inpoint;
    return AV_NOPTS_VALUE;
}
