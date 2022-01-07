
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int) ;

__attribute__((used)) static void put_timestamp(AVIOContext *pb, int64_t ts) {
    avio_wb24(pb, ts & 0xFFFFFF);
    avio_w8(pb, (ts >> 24) & 0x7F);
}
