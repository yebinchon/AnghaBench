
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int powerups; } ;
typedef TYPE_1__ aas_entityinfo_t ;


 int PW_BLUEFLAG ;
 int PW_NEUTRALFLAG ;
 int PW_REDFLAG ;
 int qfalse ;
 int qtrue ;

qboolean EntityCarriesFlag(aas_entityinfo_t *entinfo) {
 if ( entinfo->powerups & ( 1 << PW_REDFLAG ) )
  return qtrue;
 if ( entinfo->powerups & ( 1 << PW_BLUEFLAG ) )
  return qtrue;




 return qfalse;
}
