
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int filepositions_count; TYPE_1__* filepositions; TYPE_1__* head_filepositions; } ;
struct TYPE_5__ {double keyframe_timestamp; struct TYPE_5__* next; int keyframe_position; } ;
typedef TYPE_1__ FLVFileposition ;
typedef TYPE_2__ FLVContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int av_log (int *,int ,char*) ;
 TYPE_1__* av_malloc (int) ;

__attribute__((used)) static int flv_append_keyframe_info(AVFormatContext *s, FLVContext *flv, double ts, int64_t pos)
{
    FLVFileposition *position = av_malloc(sizeof(FLVFileposition));

    if (!position) {
        av_log(s, AV_LOG_WARNING, "no mem for add keyframe index!\n");
        return AVERROR(ENOMEM);
    }

    position->keyframe_timestamp = ts;
    position->keyframe_position = pos;

    if (!flv->filepositions_count) {
        flv->filepositions = position;
        flv->head_filepositions = flv->filepositions;
        position->next = ((void*)0);
    } else {
        flv->filepositions->next = position;
        position->next = ((void*)0);
        flv->filepositions = flv->filepositions->next;
    }

    flv->filepositions_count++;

    return 0;
}
