
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_wl32 (int *,int) ;
 int avio_wl64 (int *,int) ;
 int write_pad (int *,int) ;

__attribute__((used)) static int write_table0_header_events(AVIOContext *pb)
{
    avio_wl32(pb, 0x10);
    write_pad(pb, 84);
    avio_wl64(pb, 0x32);
    return 96;
}
