
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THROTTLE_LEVEL_TIER0 ;
 int THROTTLE_LEVEL_TIER1 ;
 int THROTTLE_LEVEL_TIER2 ;
 int THROTTLE_LEVEL_TIER3 ;
 int panic (char*,int) ;

void
proc_iopol_to_tier(int iopolicy, int *tier, int *passive)
{
 *passive = 0;
 *tier = 0;
 switch (iopolicy) {
  case 132:
   *tier = THROTTLE_LEVEL_TIER0;
   break;
  case 131:
   *tier = THROTTLE_LEVEL_TIER0;
   *passive = 1;
   break;
  case 130:
   *tier = THROTTLE_LEVEL_TIER1;
   break;
  case 128:
   *tier = THROTTLE_LEVEL_TIER2;
   break;
  case 129:
   *tier = THROTTLE_LEVEL_TIER3;
   break;
  default:
   panic("unknown I/O policy %d", iopolicy);
   break;
 }
}
