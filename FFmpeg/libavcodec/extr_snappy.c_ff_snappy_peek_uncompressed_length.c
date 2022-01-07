
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int GetByteContext ;


 int SEEK_END ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_seek (int *,int,int ) ;
 int decode_len (int *) ;

int64_t ff_snappy_peek_uncompressed_length(GetByteContext *gb)
{
    int pos = bytestream2_get_bytes_left(gb);
    int64_t len = decode_len(gb);

    bytestream2_seek(gb, -pos, SEEK_END);

    return len;
}
