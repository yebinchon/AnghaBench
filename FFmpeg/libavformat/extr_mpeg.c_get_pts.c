
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int avio_r8 (int *) ;
 int avio_read (int *,int*,int) ;
 int ff_parse_pes_pts (int*) ;

__attribute__((used)) static int64_t get_pts(AVIOContext *pb, int c)
{
    uint8_t buf[5];

    buf[0] = c < 0 ? avio_r8(pb) : c;
    avio_read(pb, buf + 1, 4);

    return ff_parse_pes_pts(buf);
}
