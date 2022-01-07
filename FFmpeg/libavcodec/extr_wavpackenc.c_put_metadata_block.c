
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutByteContext ;


 int WP_IDF_ODD ;
 int bytestream2_put_byte (int *,int) ;

__attribute__((used)) static void put_metadata_block(PutByteContext *pb, int flags, int size)
{
    if (size & 1)
        flags |= WP_IDF_ODD;

    bytestream2_put_byte(pb, flags);
    bytestream2_put_byte(pb, (size + 1) >> 1);
}
