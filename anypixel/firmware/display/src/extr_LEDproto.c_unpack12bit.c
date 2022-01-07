
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint16_t unpack12bit(uint8_t *buf, int index) {
    uint16_t retval = 0;
    int addr = (index * 12) / 8;
    int offset = 4-(index * 12) % 8;


    uint16_t mask = (0x0FFF << offset);


    retval = buf[addr] << 8 | buf[addr+1];

    retval &= mask;

    retval >>= offset;
    return retval;
}
