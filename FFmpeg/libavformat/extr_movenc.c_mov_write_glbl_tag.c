
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vos_len; int vos_data; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_glbl_tag(AVIOContext *pb, MOVTrack *track)
{
    avio_wb32(pb, track->vos_len + 8);
    ffio_wfourcc(pb, "glbl");
    avio_write(pb, track->vos_data, track->vos_len);
    return 8 + track->vos_len;
}
