
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int AVIOContext ;


 int avio_r8 (int *) ;

__attribute__((used)) static uint32_t read_arbitrary(AVIOContext *pb)
{
    uint8_t size, byte;
    int i;
    uint32_t word;

    size = avio_r8(pb);

    word = 0;
    for (i = 0; i < size; i++) {
        byte = avio_r8(pb);
        word <<= 8;
        word |= byte;
    }

    return word;
}
