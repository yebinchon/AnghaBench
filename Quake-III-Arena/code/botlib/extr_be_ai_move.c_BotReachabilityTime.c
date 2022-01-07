
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int traveltype; } ;
typedef TYPE_1__ aas_reachability_t ;
struct TYPE_5__ {int (* Print ) (int ,char*,int) ;} ;


 int PRT_ERROR ;
 int TRAVELTYPE_MASK ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*,int) ;

int BotReachabilityTime(aas_reachability_t *reach)
{
 switch(reach->traveltype & TRAVELTYPE_MASK)
 {
  case 130: return 5;
  case 140: return 5;
  case 142: return 5;
  case 134: return 6;
  case 129: return 5;
  case 136: return 5;
  case 132: return 5;
  case 128: return 5;
  case 131: return 5;
  case 139: return 10;
  case 137: return 8;
  case 133: return 6;
  case 141: return 6;
  case 135: return 10;
  case 138: return 10;
  default:
  {
   botimport.Print(PRT_ERROR, "travel type %d not implemented yet\n", reach->traveltype);
   return 8;
  }
 }
}
