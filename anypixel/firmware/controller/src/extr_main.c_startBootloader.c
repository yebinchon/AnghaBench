
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
 int PKT_TYPE_BL_INIT ;
 int PKT_TYPE_REBOOT ;
 TYPE_2__* ledpackets ;

void startBootloader() {
    int i;
    uint32_t * payload32 = (uint32_t*)ledpackets[PANEL_NW].s.payload;


    for(i = 0; i < 10; i++) {
        ledpackets[PANEL_NW].s.type = PKT_TYPE_REBOOT;
        payload32[0] = 0x816A4EB2;
        BLhelper_dup();
        BLhelper_send();
        Delay(100);
    }
    for(i = 0; i < 10; i++) {
        ledpackets[PANEL_NW].s.type = PKT_TYPE_BL_INIT;
        BLhelper_send();
        Delay(500);
    }
}
