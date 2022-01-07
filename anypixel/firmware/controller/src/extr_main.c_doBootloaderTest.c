
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int type; scalar_t__ payload; } ;
struct TYPE_4__ {TYPE_1__ s; } ;


 int BLhelper_dup () ;
 int BLhelper_send () ;
 int Delay (int) ;
 size_t PANEL_NW ;
 int PKT_TYPE_BL_ERASE_FLASH ;
 int PKT_TYPE_BL_READ_BLOCK ;
 int PKT_TYPE_BL_UNLOCK_FLASH ;
 int PKT_TYPE_BL_WRITE_BLOCK ;
 TYPE_2__* ledpackets ;

void doBootloaderTest() {
    int i, j;
    uint32_t * payload32 = (uint32_t*)ledpackets[PANEL_NW].s.payload;
    ledpackets[PANEL_NW].s.type = PKT_TYPE_BL_UNLOCK_FLASH;
    payload32[0] = 0x45670123;
    payload32[1] = 0xCDEF89AB;
    BLhelper_dup();
    BLhelper_send();

    ledpackets[PANEL_NW].s.type = PKT_TYPE_BL_ERASE_FLASH;
    payload32[0] = 0xACEA1623;
    BLhelper_dup();
    BLhelper_send();

    Delay(5000);

    for(i = 0; i < 10; i++) {
        ledpackets[PANEL_NW].s.type = PKT_TYPE_BL_WRITE_BLOCK;
        payload32[0] = 0x08002000+32*i;
        payload32[1] = 0x8;
        for(j = 0; j < 8; j++)
            payload32[2+j] = 8*i+j;
        BLhelper_dup();
        BLhelper_send();
    }

    for(i = 0; i < 10; i++) {
        ledpackets[PANEL_NW].s.type = PKT_TYPE_BL_READ_BLOCK;
        payload32[0] = 0x08002000+32*i;
        payload32[1] = 0x8;
        BLhelper_dup();
        BLhelper_send();
    }

    while(1);

}
