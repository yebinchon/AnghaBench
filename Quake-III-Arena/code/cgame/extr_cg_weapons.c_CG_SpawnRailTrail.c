
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
typedef int clientInfo_t ;
struct TYPE_7__ {int railgunImpact; scalar_t__ railgunFlash; } ;
struct TYPE_6__ {scalar_t__ weapon; size_t clientNum; } ;
struct TYPE_8__ {TYPE_2__ pe; TYPE_1__ currentState; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_9__ {int * clientinfo; } ;


 int CG_RailTrail (int *,int ,int ) ;
 scalar_t__ WP_RAILGUN ;
 TYPE_4__ cgs ;
 scalar_t__ qtrue ;

__attribute__((used)) static void CG_SpawnRailTrail( centity_t *cent, vec3_t origin ) {
 clientInfo_t *ci;

 if ( cent->currentState.weapon != WP_RAILGUN ) {
  return;
 }
 if ( !cent->pe.railgunFlash ) {
  return;
 }
 cent->pe.railgunFlash = qtrue;
 ci = &cgs.clientinfo[ cent->currentState.clientNum ];
 CG_RailTrail( ci, origin, cent->pe.railgunImpact );
}
