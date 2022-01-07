
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoAutoRgnOrder ;
 int PicoRegionOverride ;

__attribute__((used)) static void region_prevnext(int right)
{

 static int rgn_orders[] = { 0x148, 0x184, 0x814, 0x418, 0x841, 0x481 };
 int i;
 if (right) {
  if (!PicoRegionOverride) {
   for (i = 0; i < 6; i++)
    if (rgn_orders[i] == PicoAutoRgnOrder) break;
   if (i < 5) PicoAutoRgnOrder = rgn_orders[i+1];
   else PicoRegionOverride=1;
  }
  else PicoRegionOverride<<=1;
  if (PicoRegionOverride > 8) PicoRegionOverride = 8;
 } else {
  if (!PicoRegionOverride) {
   for (i = 0; i < 6; i++)
    if (rgn_orders[i] == PicoAutoRgnOrder) break;
   if (i > 0) PicoAutoRgnOrder = rgn_orders[i-1];
  }
  else PicoRegionOverride>>=1;
 }
}
