
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;


 int Com_sprintf (char*,int,char*,int) ;
 int Info_SetValueForKey (char*,char*,char*) ;
 int MAX_INFO_VALUE ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_Print (char*) ;

void UI_SPUnlockMedals_f( void ) {
 int n;
 char key[16];
 char awardData[MAX_INFO_VALUE];

 trap_Cvar_VariableStringBuffer( "g_spAwards", awardData, MAX_INFO_VALUE );

 for( n = 0; n < 6; n++ ) {
  Com_sprintf( key, sizeof(key), "a%i", n );
  Info_SetValueForKey( awardData, key, "100" );
 }

 trap_Cvar_Set( "g_spAwards", awardData );

 trap_Print( "All levels unlocked at 100\n" );
}
