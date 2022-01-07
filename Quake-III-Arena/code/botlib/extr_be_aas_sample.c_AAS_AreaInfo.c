
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int presencetype; int areaflags; int contents; int cluster; } ;
typedef TYPE_2__ aas_areasettings_t ;
struct TYPE_9__ {int center; int maxs; int mins; int presencetype; int flags; int contents; int cluster; } ;
typedef TYPE_3__ aas_areainfo_t ;
struct TYPE_11__ {int numareas; TYPE_1__* areas; TYPE_2__* areasettings; } ;
struct TYPE_10__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_7__ {int center; int maxs; int mins; } ;


 int PRT_ERROR ;
 int VectorCopy (int ,int ) ;
 TYPE_5__ aasworld ;
 TYPE_4__ botimport ;
 int stub1 (int ,char*,int) ;

int AAS_AreaInfo( int areanum, aas_areainfo_t *info )
{
 aas_areasettings_t *settings;
 if (!info)
  return 0;
 if (areanum <= 0 || areanum >= aasworld.numareas)
 {
  botimport.Print(PRT_ERROR, "AAS_AreaInfo: areanum %d out of range\n", areanum);
  return 0;
 }
 settings = &aasworld.areasettings[areanum];
 info->cluster = settings->cluster;
 info->contents = settings->contents;
 info->flags = settings->areaflags;
 info->presencetype = settings->presencetype;
 VectorCopy(aasworld.areas[areanum].mins, info->mins);
 VectorCopy(aasworld.areas[areanum].maxs, info->maxs);
 VectorCopy(aasworld.areas[areanum].center, info->center);
 return sizeof(aas_areainfo_t);
}
