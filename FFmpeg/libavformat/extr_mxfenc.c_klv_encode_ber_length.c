
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int klv_ber_length (int) ;

__attribute__((used)) static int klv_encode_ber_length(AVIOContext *pb, uint64_t len)
{

    int size = klv_ber_length(len);
    if (size == 1) {

        avio_w8(pb, len);
        return 1;
    }

    size --;

    avio_w8(pb, 0x80 + size);
    while(size) {
        size--;
        avio_w8(pb, len >> 8 * size & 0xff);
    }
    return 0;
}
