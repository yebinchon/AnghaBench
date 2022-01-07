
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_CRC_24_IEEE ;
 unsigned long av_crc (int ,unsigned long,int const*,unsigned int) ;
 int av_crc_get_table (int ) ;

__attribute__((used)) static unsigned long tak_check_crc(unsigned long checksum, const uint8_t *buf,
                                   unsigned int len)
{
    return av_crc(av_crc_get_table(AV_CRC_24_IEEE), checksum, buf, len);
}
