
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutByteContext ;


 int bytestream2_put_byte (int *,unsigned int) ;

__attribute__((used)) static void put_descr(PutByteContext *pb, int tag, unsigned int size)
{
    int i = 3;
    bytestream2_put_byte(pb, tag);
    for (; i > 0; i--)
        bytestream2_put_byte(pb, (size >> (7 * i)) | 0x80);
    bytestream2_put_byte(pb, size & 0x7F);
}
