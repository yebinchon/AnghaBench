
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 unsigned int bytestream2_get_le32 (int *) ;
 int snappy_copy (int *,int *,int,unsigned int,int) ;

__attribute__((used)) static int snappy_copy4(GetByteContext *gb, uint8_t *start, uint8_t *p,
                        int size, int val)
{
    int len = 1 + val;
    unsigned int off = bytestream2_get_le32(gb);

    return snappy_copy(start, p, size, off, len);
}
