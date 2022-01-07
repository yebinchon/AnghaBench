
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int size; scalar_t__ time; scalar_t__ duration; scalar_t__ tfrf_offset; int offset; } ;
struct TYPE_11__ {int nb_streams; TYPE_2__* tracks; } ;
struct TYPE_10__ {unsigned int nb_frag_info; unsigned int frag_info_capacity; scalar_t__ start_dts; scalar_t__ frag_start; scalar_t__ end_pts; TYPE_1__* cluster; TYPE_4__* frag_info; int entry; } ;
struct TYPE_9__ {scalar_t__ cts; scalar_t__ dts; } ;
typedef TYPE_2__ MOVTrack ;
typedef TYPE_3__ MOVMuxContext ;
typedef TYPE_4__ MOVFragmentInfo ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 unsigned int MOV_FRAG_INFO_ALLOC_INCREMENT ;
 scalar_t__ av_reallocp_array (TYPE_4__**,unsigned int,int) ;
 int avio_tell (int *) ;
 int mov_write_tfrf_tags (int *,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int mov_add_tfra_entries(AVIOContext *pb, MOVMuxContext *mov, int tracks,
                                int size)
{
    int i;
    for (i = 0; i < mov->nb_streams; i++) {
        MOVTrack *track = &mov->tracks[i];
        MOVFragmentInfo *info;
        if ((tracks >= 0 && i != tracks) || !track->entry)
            continue;
        track->nb_frag_info++;
        if (track->nb_frag_info >= track->frag_info_capacity) {
            unsigned new_capacity = track->nb_frag_info + MOV_FRAG_INFO_ALLOC_INCREMENT;
            if (av_reallocp_array(&track->frag_info,
                                  new_capacity,
                                  sizeof(*track->frag_info)))
                return AVERROR(ENOMEM);
            track->frag_info_capacity = new_capacity;
        }
        info = &track->frag_info[track->nb_frag_info - 1];
        info->offset = avio_tell(pb);
        info->size = size;


        info->time = track->start_dts + track->frag_start +
                         track->cluster[0].cts;
        info->duration = track->end_pts -
                         (track->cluster[0].dts + track->cluster[0].cts);



        if (info->time < 0) {
            info->duration += info->time;
            info->time = 0;
        }
        info->tfrf_offset = 0;
        mov_write_tfrf_tags(pb, mov, track);
    }
    return 0;
}
