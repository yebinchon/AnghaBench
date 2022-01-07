
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_5__ {int entry; TYPE_1__* cluster; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int MOV_DISPOSABLE_SAMPLE ;
 int MOV_SAMPLE_DEPENDENCY_NO ;
 int MOV_SAMPLE_DEPENDENCY_UNKNOWN ;
 int MOV_SAMPLE_DEPENDENCY_YES ;
 int MOV_SYNC_SAMPLE ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_sdtp_tag(AVIOContext *pb, MOVTrack *track)
{
    int i;
    uint8_t leading, dependent, reference, redundancy;
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "sdtp");
    avio_wb32(pb, 0);
    for (i = 0; i < track->entry; i++) {
        dependent = MOV_SAMPLE_DEPENDENCY_YES;
        leading = reference = redundancy = MOV_SAMPLE_DEPENDENCY_UNKNOWN;
        if (track->cluster[i].flags & MOV_DISPOSABLE_SAMPLE) {
            reference = MOV_SAMPLE_DEPENDENCY_NO;
        }
        if (track->cluster[i].flags & MOV_SYNC_SAMPLE) {
            dependent = MOV_SAMPLE_DEPENDENCY_NO;
        }
        avio_w8(pb, (leading << 6) | (dependent << 4) |
                    (reference << 2) | redundancy);
    }
    return update_size(pb, pos);
}
