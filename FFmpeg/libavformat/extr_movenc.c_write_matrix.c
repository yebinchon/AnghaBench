
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;

__attribute__((used)) static void write_matrix(AVIOContext *pb, int16_t a, int16_t b, int16_t c,
                         int16_t d, int16_t tx, int16_t ty)
{
    avio_wb32(pb, a << 16);
    avio_wb32(pb, b << 16);
    avio_wb32(pb, 0);
    avio_wb32(pb, c << 16);
    avio_wb32(pb, d << 16);
    avio_wb32(pb, 0);
    avio_wb32(pb, tx << 16);
    avio_wb32(pb, ty << 16);
    avio_wb32(pb, 1 << 30);
}
