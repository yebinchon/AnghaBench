
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int buf ;
struct TYPE_4__ {int vos_len; int * vos_data; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int avio_write (int *,int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_dvc1_structs (TYPE_1__*,int *) ;

__attribute__((used)) static int mov_write_dvc1_tag(AVIOContext *pb, MOVTrack *track)
{
    uint8_t buf[7] = { 0 };
    int ret;

    if ((ret = mov_write_dvc1_structs(track, buf)) < 0)
        return ret;

    avio_wb32(pb, track->vos_len + 8 + sizeof(buf));
    ffio_wfourcc(pb, "dvc1");
    avio_write(pb, buf, sizeof(buf));
    avio_write(pb, track->vos_data, track->vos_len);

    return 0;
}
