
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svEntity_t ;
struct TYPE_5__ {size_t number; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
typedef TYPE_2__ sharedEntity_t ;
struct TYPE_7__ {int * svEntities; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 size_t MAX_GENTITIES ;
 TYPE_3__ sv ;

svEntity_t *SV_SvEntityForGentity( sharedEntity_t *gEnt ) {
 if ( !gEnt || gEnt->s.number < 0 || gEnt->s.number >= MAX_GENTITIES ) {
  Com_Error( ERR_DROP, "SV_SvEntityForGentity: bad gEnt" );
 }
 return &sv.svEntities[ gEnt->s.number ];
}
