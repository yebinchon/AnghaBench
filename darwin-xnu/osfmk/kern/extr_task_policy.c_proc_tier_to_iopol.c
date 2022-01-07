
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOPOL_DEFAULT ;
 int IOPOL_PASSIVE ;
 int IOPOL_STANDARD ;
 int IOPOL_THROTTLE ;
 int IOPOL_UTILITY ;





 int panic (char*,int) ;

int
proc_tier_to_iopol(int tier, int passive)
{
 if (passive == 1) {
  switch (tier) {
   case 131:
    return IOPOL_PASSIVE;
   default:
    panic("unknown passive tier %d", tier);
    return IOPOL_DEFAULT;
  }
 } else {
  switch (tier) {
   case 132:
   case 131:
    return IOPOL_DEFAULT;
   case 130:
    return IOPOL_STANDARD;
   case 129:
    return IOPOL_UTILITY;
   case 128:
    return IOPOL_THROTTLE;
   default:
    panic("unknown tier %d", tier);
    return IOPOL_DEFAULT;
  }
 }
}
