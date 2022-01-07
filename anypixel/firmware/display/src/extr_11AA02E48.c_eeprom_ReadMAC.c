
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int read_block (int*,int,int) ;
 int usleep (int) ;

bool eeprom_ReadMAC(uint8_t *MACaddr) {
    int i;
    bool retval;
    for(i = 0; i < 10; i++) {
        retval = read_block(MACaddr, 0xFA, 6);
        if(retval)
            break;
        usleep(1000000);
    }
    if(!retval) {
        for(i = 0; i < 6; i++)
            MACaddr[i] = 0xFF;
    }
    return retval;
}
