
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AMF_DATA_TYPE_NUMBER ;
 int av_double2int (double) ;
 int avio_w8 (int *,int ) ;
 int avio_wb64 (int *,int ) ;

__attribute__((used)) static void put_amf_double(AVIOContext *pb, double d)
{
    avio_w8(pb, AMF_DATA_TYPE_NUMBER);
    avio_wb64(pb, av_double2int(d));
}
