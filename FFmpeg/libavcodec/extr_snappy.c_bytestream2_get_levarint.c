
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int GetByteContext ;


 int bytestream2_get_byte (int *) ;

__attribute__((used)) static int64_t bytestream2_get_levarint(GetByteContext *gb)
{
    uint64_t val = 0;
    int shift = 0;
    int tmp;

    do {
        tmp = bytestream2_get_byte(gb);
        val |= (tmp & 127) << shift;
        shift += 7;
    } while (tmp & 128);

    return val;
}
