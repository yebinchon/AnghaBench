
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int AV_RL16 (int const*) ;
 int av_crc (int ,int ,int const*,unsigned int) ;
 int crc_2D ;

uint16_t ff_mlp_checksum16(const uint8_t *buf, unsigned int buf_size)
{
    uint16_t crc;

    crc = av_crc(crc_2D, 0, buf, buf_size - 2);
    crc ^= AV_RL16(buf + buf_size - 2);
    return crc;
}
