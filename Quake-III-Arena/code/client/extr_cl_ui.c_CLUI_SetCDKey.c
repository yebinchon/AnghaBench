
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
 int Com_Memcpy (scalar_t__*,char*,int) ;
 TYPE_1__* Cvar_Get (char*,char*,int) ;
 scalar_t__ UI_usesUniqueCDKey () ;
 scalar_t__* cl_cdkey ;
 int cvar_modifiedFlags ;

__attribute__((used)) static void CLUI_SetCDKey( char *buf ) {
 cvar_t *fs;
 fs = Cvar_Get ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
 if (UI_usesUniqueCDKey() && fs && fs->string[0] != 0) {
  Com_Memcpy( &cl_cdkey[16], buf, 16 );
  cl_cdkey[32] = 0;

  cvar_modifiedFlags |= CVAR_ARCHIVE;
 } else {
  Com_Memcpy( cl_cdkey, buf, 16 );

  cvar_modifiedFlags |= CVAR_ARCHIVE;
 }
}
