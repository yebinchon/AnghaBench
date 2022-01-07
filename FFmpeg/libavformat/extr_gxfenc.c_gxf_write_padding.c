
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int ) ;

__attribute__((used)) static void gxf_write_padding(AVIOContext *pb, int64_t to_pad)
{
    for (; to_pad > 0; to_pad--) {
        avio_w8(pb, 0);
    }
}
