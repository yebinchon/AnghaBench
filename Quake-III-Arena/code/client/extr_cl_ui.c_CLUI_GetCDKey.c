
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* string; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_INIT ;
 int CVAR_SYSTEMINFO ;
 int Com_Memcpy (char*,int *,int) ;
 TYPE_1__* Cvar_Get (char*,char*,int) ;
 scalar_t__ UI_usesUniqueCDKey () ;
 int * cl_cdkey ;

__attribute__((used)) static void CLUI_GetCDKey( char *buf, int buflen ) {
 cvar_t *fs;
 fs = Cvar_Get ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
 if (UI_usesUniqueCDKey() && fs && fs->string[0] != 0) {
  Com_Memcpy( buf, &cl_cdkey[16], 16);
  buf[16] = 0;
 } else {
  Com_Memcpy( buf, cl_cdkey, 16);
  buf[16] = 0;
 }
}
