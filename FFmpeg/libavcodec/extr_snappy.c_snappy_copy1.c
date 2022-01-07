
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 int bytestream2_get_byte (int *) ;
 int snappy_copy (int *,int *,int,unsigned int,int) ;

__attribute__((used)) static int snappy_copy1(GetByteContext *gb, uint8_t *start, uint8_t *p,
                        int size, int val)
{
    int len = 4 + (val & 0x7);
    unsigned int off = bytestream2_get_byte(gb) | (val & 0x38) << 5;

    return snappy_copy(start, p, size, off, len);
}
