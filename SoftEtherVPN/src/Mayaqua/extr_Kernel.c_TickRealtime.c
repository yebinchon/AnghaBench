
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ Tick () ;
 scalar_t__ TickRealtimeManual () ;

UINT TickRealtime()
{



 return TickRealtimeManual() + 1;

}
