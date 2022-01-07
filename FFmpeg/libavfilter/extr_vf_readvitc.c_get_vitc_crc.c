
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t get_vitc_crc( uint8_t *line ) {
    uint8_t crc;

    crc = 0x01 | (line[0] << 2);
    crc ^= (line[0] >> 6) | 0x04 | (line[1] << 4);
    crc ^= (line[1] >> 4) | 0x10 | (line[2] << 6);
    crc ^= (line[2] >> 2) | 0x40;
    crc ^= line[3];
    crc ^= 0x01 | (line[4] << 2);
    crc ^= (line[4] >> 6) | 0x04 | (line[5] << 4);
    crc ^= (line[5] >> 4) | 0x10 | (line[6] << 6);
    crc ^= (line[6] >> 2) | 0x40;
    crc ^= line[7];
    crc ^= 0x01;
    crc = (crc >> 2) | (crc << 6);
    return crc;
}
