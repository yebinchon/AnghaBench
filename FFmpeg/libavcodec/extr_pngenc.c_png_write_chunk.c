
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int AVCRC ;


 int AV_CRC_32_IEEE_LE ;
 int AV_WL32 (int const*,int) ;
 int av_bswap32 (int) ;
 int av_crc (int const*,int,int const*,int) ;
 int * av_crc_get_table (int ) ;
 int bytestream_put_be32 (int const**,int) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static void png_write_chunk(uint8_t **f, uint32_t tag,
                            const uint8_t *buf, int length)
{
    const AVCRC *crc_table = av_crc_get_table(AV_CRC_32_IEEE_LE);
    uint32_t crc = ~0U;
    uint8_t tagbuf[4];

    bytestream_put_be32(f, length);
    AV_WL32(tagbuf, tag);
    crc = av_crc(crc_table, crc, tagbuf, 4);
    bytestream_put_be32(f, av_bswap32(tag));
    if (length > 0) {
        crc = av_crc(crc_table, crc, buf, length);
        memcpy(*f, buf, length);
        *f += length;
    }
    bytestream_put_be32(f, ~crc);
}
