
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nb_elem; TYPE_2__* elem; } ;
struct TYPE_8__ {int ctx; TYPE_1__ tracks; } ;
struct TYPE_7__ {int num; } ;
typedef TYPE_2__ MatroskaTrack ;
typedef TYPE_3__ MatroskaDemuxContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int) ;

__attribute__((used)) static MatroskaTrack *matroska_find_track_by_num(MatroskaDemuxContext *matroska,
                                                 int num)
{
    MatroskaTrack *tracks = matroska->tracks.elem;
    int i;

    for (i = 0; i < matroska->tracks.nb_elem; i++)
        if (tracks[i].num == num)
            return &tracks[i];

    av_log(matroska->ctx, AV_LOG_ERROR, "Invalid track number %d\n", num);
    return ((void*)0);
}
