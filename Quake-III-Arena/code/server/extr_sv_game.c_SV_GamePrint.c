
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,char const*) ;

void SV_GamePrint( const char *string ) {
 Com_Printf( "%s", string );
}
