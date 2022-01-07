
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int timestamp ;
typedef int int64_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;

__attribute__((used)) static inline void put_timestamp(AVIOContext *pb, int id, int64_t timestamp)
{
    avio_w8(pb, (id << 4) | (((timestamp >> 30) & 0x07) << 1) | 1);
    avio_wb16(pb, (uint16_t)((((timestamp >> 15) & 0x7fff) << 1) | 1));
    avio_wb16(pb, (uint16_t)((((timestamp) & 0x7fff) << 1) | 1));
}
