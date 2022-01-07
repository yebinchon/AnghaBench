
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* txpacket ;

void TLC59401_SetValue(int index, int value) {
    int addr = (index * 3) / 2;
    if(index & 1) {

        txpacket[addr] &= 0xF0;
        txpacket[addr] |= ((value >> 8) & 0x0F);
        txpacket[addr+1] = value & 0xFF;
    } else {
        txpacket[addr] = (value >> 4) & 0xFF;
        txpacket[addr+1] &= 0x0F;
        txpacket[addr+1] |= (value << 4) & 0xF0;
    }
}
