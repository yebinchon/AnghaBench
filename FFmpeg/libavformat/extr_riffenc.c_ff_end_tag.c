
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int FFALIGN (int,int) ;
 int SEEK_SET ;
 int av_assert0 (int) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wl32 (int *,int ) ;

void ff_end_tag(AVIOContext *pb, int64_t start)
{
    int64_t pos;

    av_assert0((start&1) == 0);

    pos = avio_tell(pb);
    if (pos & 1)
        avio_w8(pb, 0);
    avio_seek(pb, start - 4, SEEK_SET);
    avio_wl32(pb, (uint32_t)(pos - start));
    avio_seek(pb, FFALIGN(pos, 2), SEEK_SET);
}
