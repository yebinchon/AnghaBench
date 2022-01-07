
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



void pack12bit(uint8_t *buf, int index, uint16_t inVal) {
    int addr = (index * 12) / 8;
    int offset = 4-(index * 12) % 8;

    uint16_t value = (inVal & 0xFFF) << offset;
    uint16_t mask = ~(0x0FFF << offset);


    buf[addr] &= mask >> 8;
    buf[addr+1] &= mask & 0xFF;

    buf[addr] |= value >> 8;
    buf[addr+1] |= value & 0xFF;
}
