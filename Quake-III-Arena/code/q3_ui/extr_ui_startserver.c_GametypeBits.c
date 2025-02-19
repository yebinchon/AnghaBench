
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COM_ParseExt (char**,int ) ;
 int GT_CTF ;
 int GT_FFA ;
 int GT_SINGLE_PLAYER ;
 int GT_TEAM ;
 int GT_TOURNAMENT ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int qfalse ;

__attribute__((used)) static int GametypeBits( char *string ) {
 int bits;
 char *p;
 char *token;

 bits = 0;
 p = string;
 while( 1 ) {
  token = COM_ParseExt( &p, qfalse );
  if( token[0] == 0 ) {
   break;
  }

  if( Q_stricmp( token, "ffa" ) == 0 ) {
   bits |= 1 << GT_FFA;
   continue;
  }

  if( Q_stricmp( token, "tourney" ) == 0 ) {
   bits |= 1 << GT_TOURNAMENT;
   continue;
  }

  if( Q_stricmp( token, "single" ) == 0 ) {
   bits |= 1 << GT_SINGLE_PLAYER;
   continue;
  }

  if( Q_stricmp( token, "team" ) == 0 ) {
   bits |= 1 << GT_TEAM;
   continue;
  }

  if( Q_stricmp( token, "ctf" ) == 0 ) {
   bits |= 1 << GT_CTF;
   continue;
  }
 }

 return bits;
}
