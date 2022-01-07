
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int powerups; } ;
typedef TYPE_1__ aas_entityinfo_t ;


 int PW_QUAD ;
 int qfalse ;
 int qtrue ;

qboolean EntityHasQuad(aas_entityinfo_t *entinfo) {
 if (entinfo->powerups & (1 << PW_QUAD)) {
  return qtrue;
 }
 return qfalse;
}
