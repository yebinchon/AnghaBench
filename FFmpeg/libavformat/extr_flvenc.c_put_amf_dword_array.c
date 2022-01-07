
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int AVIOContext ;


 int AMF_DATA_TYPE_ARRAY ;
 int avio_w8 (int *,int ) ;
 int avio_wb32 (int *,int ) ;

__attribute__((used)) static void put_amf_dword_array(AVIOContext *pb, uint32_t dw)
{
    avio_w8(pb, AMF_DATA_TYPE_ARRAY);
    avio_wb32(pb, dw);
}
