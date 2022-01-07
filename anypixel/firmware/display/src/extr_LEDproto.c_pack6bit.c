
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



void pack6bit(uint8_t *buf, int index, uint8_t inVal) {
    int addr = (index * 6) / 8;
    int offset = 10-(index * 6) % 8;

    uint16_t value = (inVal & 0x3F) << offset;
    uint16_t mask = ~(0x003F << offset);


    buf[addr] &= mask >> 8;
    buf[addr+1] &= mask & 0xFF;

    buf[addr] |= value >> 8;
    buf[addr+1] |= value & 0xFF;
}
