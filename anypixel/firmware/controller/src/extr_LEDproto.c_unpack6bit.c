
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint8_t unpack6bit(uint8_t *buf, int index) {
    uint16_t retval = 0;
    int addr = (index * 6) / 8;
    int offset = 10-(index * 6) % 8;


    uint16_t mask = (0x003F << offset);


    retval = buf[addr] << 8 | buf[addr+1];

    retval &= mask;

    retval >>= offset;
    return retval;
}
