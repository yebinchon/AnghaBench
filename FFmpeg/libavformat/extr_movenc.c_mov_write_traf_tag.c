
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_16__ {void* tfrf_offset; } ;
struct TYPE_15__ {scalar_t__ mode; int ism_lookahead; } ;
struct TYPE_14__ {int entry; int nb_frag_info; TYPE_4__* frag_info; TYPE_1__* cluster; } ;
struct TYPE_13__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_2__ MOVTrack ;
typedef TYPE_3__ MOVMuxContext ;
typedef TYPE_4__ MOVFragmentInfo ;
typedef int AVIOContext ;


 scalar_t__ MODE_ISM ;
 void* avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_tfdt_tag (int *,TYPE_2__*) ;
 int mov_write_tfhd_tag (int *,TYPE_3__*,TYPE_2__*,void*) ;
 int mov_write_tfxd_tag (int *,TYPE_2__*) ;
 int mov_write_trun_tag (int *,TYPE_3__*,TYPE_2__*,int,int,int) ;
 int update_size (int *,void*) ;

__attribute__((used)) static int mov_write_traf_tag(AVIOContext *pb, MOVMuxContext *mov,
                              MOVTrack *track, int64_t moof_offset,
                              int moof_size)
{
    int64_t pos = avio_tell(pb);
    int i, start = 0;
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "traf");

    mov_write_tfhd_tag(pb, mov, track, moof_offset);
    if (mov->mode != MODE_ISM)
        mov_write_tfdt_tag(pb, track);
    for (i = 1; i < track->entry; i++) {
        if (track->cluster[i].pos != track->cluster[i - 1].pos + track->cluster[i - 1].size) {
            mov_write_trun_tag(pb, mov, track, moof_size, start, i);
            start = i;
        }
    }
    mov_write_trun_tag(pb, mov, track, moof_size, start, track->entry);
    if (mov->mode == MODE_ISM) {
        mov_write_tfxd_tag(pb, track);

        if (mov->ism_lookahead) {
            int i, size = 16 + 4 + 1 + 16 * mov->ism_lookahead;

            if (track->nb_frag_info > 0) {
                MOVFragmentInfo *info = &track->frag_info[track->nb_frag_info - 1];
                if (!info->tfrf_offset)
                    info->tfrf_offset = avio_tell(pb);
            }
            avio_wb32(pb, 8 + size);
            ffio_wfourcc(pb, "free");
            for (i = 0; i < size; i++)
                avio_w8(pb, 0);
        }
    }

    return update_size(pb, pos);
}
