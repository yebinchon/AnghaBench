
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int integer; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int Com_Error (int ,char*,int) ;
 TYPE_1__* Cvar_Get (char*,int ,int) ;
 int DEF_COMZONEMEGS ;
 int ERR_FATAL ;
 int Z_ClearZone (int ,int) ;
 int calloc (int,int) ;
 int mainzone ;
 int s_zoneTotal ;

void Com_InitZoneMemory( void ) {
 cvar_t *cv;

 cv = Cvar_Get( "com_zoneMegs", DEF_COMZONEMEGS, CVAR_LATCH | CVAR_ARCHIVE );

 if ( cv->integer < 20 ) {
  s_zoneTotal = 1024 * 1024 * 16;
 } else {
  s_zoneTotal = cv->integer * 1024 * 1024;
 }


 mainzone = calloc( s_zoneTotal, 1 );
 if ( !mainzone ) {
  Com_Error( ERR_FATAL, "Zone data failed to allocate %i megs", s_zoneTotal / (1024*1024) );
 }
 Z_ClearZone( mainzone, s_zoneTotal );

}
