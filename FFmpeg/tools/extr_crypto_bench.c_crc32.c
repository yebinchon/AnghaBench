
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_CRC_32_IEEE ;
 int av_crc (int ,int ,int const*,unsigned int) ;
 int av_crc_get_table (int ) ;

__attribute__((used)) static unsigned crc32(const uint8_t *data, unsigned size)
{
    return av_crc(av_crc_get_table(AV_CRC_32_IEEE), 0, data, size);
}
