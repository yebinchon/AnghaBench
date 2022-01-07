
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {scalar_t__ tag; int vos_len; int vos_data; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 scalar_t__ MKTAG (char,char,char,char) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ff_isom_write_hvcc (int *,int ,int ,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_hvcc_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "hvcC");
    if (track->tag == MKTAG('h','v','c','1'))
        ff_isom_write_hvcc(pb, track->vos_data, track->vos_len, 1);
    else
        ff_isom_write_hvcc(pb, track->vos_data, track->vos_len, 0);
    return update_size(pb, pos);
}
