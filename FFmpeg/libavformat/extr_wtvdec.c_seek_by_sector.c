
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int WTV_SECTOR_BITS ;
 int avio_seek (int *,int,int ) ;

__attribute__((used)) static int64_t seek_by_sector(AVIOContext *pb, int64_t sector, int64_t offset)
{
    return avio_seek(pb, (sector << WTV_SECTOR_BITS) + offset, SEEK_SET);
}
