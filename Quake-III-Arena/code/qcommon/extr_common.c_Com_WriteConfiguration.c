
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* string; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ARCHIVE ;
 int CVAR_INIT ;
 int CVAR_SYSTEMINFO ;
 int Com_WriteCDKey (char*,int *) ;
 int Com_WriteConfigToFile (char*) ;
 TYPE_1__* Cvar_Get (char*,char*,int) ;
 scalar_t__ UI_usesUniqueCDKey () ;
 int * cl_cdkey ;
 int com_fullyInitialized ;
 int cvar_modifiedFlags ;

void Com_WriteConfiguration( void ) {

 cvar_t *fs;



 if ( !com_fullyInitialized ) {
  return;
 }

 if ( !(cvar_modifiedFlags & CVAR_ARCHIVE ) ) {
  return;
 }
 cvar_modifiedFlags &= ~CVAR_ARCHIVE;

 Com_WriteConfigToFile( "q3config.cfg" );



 fs = Cvar_Get ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
 if (UI_usesUniqueCDKey() && fs && fs->string[0] != 0) {
  Com_WriteCDKey( fs->string, &cl_cdkey[16] );
 } else {
  Com_WriteCDKey( "baseq3", cl_cdkey );
 }

}
