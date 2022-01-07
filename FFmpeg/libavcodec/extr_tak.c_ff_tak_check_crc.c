
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int AVERROR_INVALIDDATA ;
 int AV_CRC_24_IEEE ;
 scalar_t__ AV_RB24 (int const*) ;
 scalar_t__ av_crc (int ,int,int const*,unsigned int) ;
 int av_crc_get_table (int ) ;

int ff_tak_check_crc(const uint8_t *buf, unsigned int buf_size)
{
    uint32_t crc, CRC;

    if (buf_size < 4)
        return AVERROR_INVALIDDATA;
    buf_size -= 3;

    CRC = AV_RB24(buf + buf_size);
    crc = av_crc(av_crc_get_table(AV_CRC_24_IEEE), 0xCE04B7U, buf, buf_size);
    if (CRC != crc)
        return AVERROR_INVALIDDATA;

    return 0;
}
