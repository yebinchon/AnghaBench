
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int INT64_MAX ;
 int avio_r8 (int *) ;

__attribute__((used)) static int64_t klv_decode_ber_length(AVIOContext *pb)
{
    uint64_t size = avio_r8(pb);
    if (size & 0x80) {
        int bytes_num = size & 0x7f;

        if (bytes_num > 8)
            return AVERROR_INVALIDDATA;
        size = 0;
        while (bytes_num--)
            size = size << 8 | avio_r8(pb);
    }
    if (size > INT64_MAX)
        return AVERROR_INVALIDDATA;
    return size;
}
