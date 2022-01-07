
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numareas; TYPE_1__* areasettings; int loaded; } ;
struct TYPE_5__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_4__ {int presencetype; } ;


 int PRT_ERROR ;
 TYPE_3__ aasworld ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*) ;

int AAS_AreaPresenceType(int areanum)
{
 if (!aasworld.loaded) return 0;
 if (areanum <= 0 || areanum >= aasworld.numareas)
 {
  botimport.Print(PRT_ERROR, "AAS_AreaPresenceType: invalid area number\n");
  return 0;
 }
 return aasworld.areasettings[areanum].presencetype;
}
