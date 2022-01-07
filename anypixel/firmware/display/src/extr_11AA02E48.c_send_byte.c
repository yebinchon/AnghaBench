
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int rwbit (int,int) ;

__attribute__((used)) static bool send_byte(uint8_t byte, bool mak) {
    uint8_t i;
    for(i = 0; i < 8; i++) {
        rwbit(!(byte & 0x80), (byte & 0x80));
        byte <<= 1;
    }
    rwbit(!mak, mak);
    return rwbit(1, 1);
}
