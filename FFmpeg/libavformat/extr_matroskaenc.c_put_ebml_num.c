
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned long long uint64_t ;
typedef int AVIOContext ;


 int av_assert0 (int) ;
 int avio_w8 (int *,int ) ;
 int ebml_num_size (unsigned long long) ;

__attribute__((used)) static void put_ebml_num(AVIOContext *pb, uint64_t num, int bytes)
{
    int i, needed_bytes = ebml_num_size(num);


    av_assert0(num < (1ULL << 56) - 1);

    if (bytes == 0)

        bytes = needed_bytes;


    av_assert0(bytes >= needed_bytes);

    num |= 1ULL << bytes * 7;
    for (i = bytes - 1; i >= 0; i--)
        avio_w8(pb, (uint8_t)(num >> i * 8));
}
