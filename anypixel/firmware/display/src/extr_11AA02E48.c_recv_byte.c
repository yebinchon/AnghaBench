
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int rwbit (int,int) ;

__attribute__((used)) static bool recv_byte(uint8_t *byte, bool mak) {
    uint8_t i, work;
    for(i = 0; i < 8; i++)
        work = (work << 1) | rwbit(1, 1);
    *byte = work;
    rwbit(!mak, mak);
    return rwbit(1, 1);
}
