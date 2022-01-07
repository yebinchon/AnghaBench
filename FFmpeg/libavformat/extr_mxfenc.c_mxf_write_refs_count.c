
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;

__attribute__((used)) static void mxf_write_refs_count(AVIOContext *pb, int ref_count)
{
    avio_wb32(pb, ref_count);
    avio_wb32(pb, 16);
}
