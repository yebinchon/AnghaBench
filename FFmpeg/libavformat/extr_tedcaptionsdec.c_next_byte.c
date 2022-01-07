
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int AVERROR_EOF ;
 int avio_read (int *,int*,int) ;

__attribute__((used)) static void next_byte(AVIOContext *pb, int *cur_byte)
{
    uint8_t b;
    int ret = avio_read(pb, &b, 1);
    *cur_byte = ret > 0 ? b : ret == 0 ? AVERROR_EOF : ret;
}
