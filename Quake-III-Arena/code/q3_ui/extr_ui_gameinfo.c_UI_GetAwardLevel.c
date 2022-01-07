
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int awardData ;


 int Com_sprintf (char*,int,char*,int) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 int atoi (int ) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;

int UI_GetAwardLevel( int award ) {
 char key[16];
 char awardData[MAX_INFO_VALUE];

 trap_Cvar_VariableStringBuffer( "g_spAwards", awardData, sizeof(awardData) );

 Com_sprintf( key, sizeof(key), "a%i", award );
 return atoi( Info_ValueForKey( awardData, key ) );
}
