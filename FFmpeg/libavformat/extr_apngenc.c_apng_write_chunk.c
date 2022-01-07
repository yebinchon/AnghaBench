
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int AVIOContext ;
typedef int AVCRC ;


 int AV_CRC_32_IEEE_LE ;
 int AV_WB32 (int *,size_t) ;
 int av_assert0 (int const*) ;
 size_t av_crc (int const*,size_t,int *,size_t) ;
 int * av_crc_get_table (int ) ;
 int avio_wb32 (int *,size_t) ;
 int avio_write (int *,int *,size_t) ;

__attribute__((used)) static void apng_write_chunk(AVIOContext *io_context, uint32_t tag,
                             uint8_t *buf, size_t length)
{
    const AVCRC *crc_table = av_crc_get_table(AV_CRC_32_IEEE_LE);
    uint32_t crc = ~0U;
    uint8_t tagbuf[4];

    av_assert0(crc_table);

    avio_wb32(io_context, length);
    AV_WB32(tagbuf, tag);
    crc = av_crc(crc_table, crc, tagbuf, 4);
    avio_wb32(io_context, tag);
    if (length > 0) {
        crc = av_crc(crc_table, crc, buf, length);
        avio_write(io_context, buf, length);
    }
    avio_wb32(io_context, ~crc);
}
