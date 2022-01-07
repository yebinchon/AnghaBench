
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int WTV_SECTOR_SIZE ;
 int avio_wl32 (int *,int) ;
 int write_pad (int *,int) ;

__attribute__((used)) static void write_fat(AVIOContext *pb, int start_sector, int nb_sectors, int shift)
{
    int i;
    for (i = 0; i < nb_sectors; i++) {
        avio_wl32(pb, start_sector + (i << shift));
    }

    write_pad(pb, WTV_SECTOR_SIZE - ((nb_sectors << 2) % WTV_SECTOR_SIZE));
}
