
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_wb16 (int *,int) ;

__attribute__((used)) static void mxf_write_local_tag(AVIOContext *pb, int size, int tag)
{
    avio_wb16(pb, tag);
    avio_wb16(pb, size);
}
