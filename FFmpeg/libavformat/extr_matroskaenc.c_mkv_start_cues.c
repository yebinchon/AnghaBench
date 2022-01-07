
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int segment_offset; } ;
typedef TYPE_1__ mkv_cues ;
typedef int int64_t ;


 TYPE_1__* av_mallocz (int) ;

__attribute__((used)) static mkv_cues *mkv_start_cues(int64_t segment_offset)
{
    mkv_cues *cues = av_mallocz(sizeof(mkv_cues));
    if (!cues)
        return ((void*)0);

    cues->segment_offset = segment_offset;
    return cues;
}
