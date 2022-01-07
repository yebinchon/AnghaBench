
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* height; void* width; int format; } ;
typedef TYPE_1__ PixHeader ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 void* bytestream2_get_be16 (int *) ;
 unsigned int bytestream2_get_be32 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_skip (int *,unsigned int) ;

__attribute__((used)) static int pix_decode_header(PixHeader *out, GetByteContext *pgb)
{
    unsigned int header_len = bytestream2_get_be32(pgb);

    out->format = bytestream2_get_byte(pgb);
    bytestream2_skip(pgb, 2);
    out->width = bytestream2_get_be16(pgb);
    out->height = bytestream2_get_be16(pgb);


    if (header_len < 11)
        return AVERROR_INVALIDDATA;


    bytestream2_skip(pgb, header_len - 7);

    return 0;
}
