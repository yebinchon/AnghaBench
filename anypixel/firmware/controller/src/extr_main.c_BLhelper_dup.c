
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {void** payload; } ;
struct TYPE_4__ {TYPE_1__ s; } ;


 size_t PANEL_NW ;
 TYPE_2__* ledpackets ;

__attribute__((used)) static void BLhelper_dup() {
    int i;
    for(i = 0; i < 48; i++) {
        uint8_t val = ledpackets[PANEL_NW].s.payload[i];
        ledpackets[PANEL_NW].s.payload[i+48] = val;
        ledpackets[PANEL_NW].s.payload[i+48*2] = val;
        ledpackets[PANEL_NW].s.payload[i+48*3] = val;
        ledpackets[PANEL_NW].s.payload[i+48*4] = val;
    }
}
