
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int battery_level; } ;


 TYPE_1__* wpaddata ;

u8 WPAD_BatteryLevel(int chan)
{

 return wpaddata[chan].battery_level;
}
