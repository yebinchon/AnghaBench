
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int netadr_t ;
struct TYPE_4__ {int challenge; int adr; int pingTime; } ;
struct TYPE_3__ {TYPE_2__* challenges; int time; int authorizeAddress; } ;


 char* Cmd_Argv (int) ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int Com_Printf (char*) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int MAX_CHALLENGES ;
 int NET_CompareBaseAdr (int ,int ) ;
 int NET_OutOfBandPrint (int ,int ,char*,...) ;
 int NS_SERVER ;
 int Q_stricmp (char*,char*) ;
 int atoi (char*) ;
 int sprintf (char*,char*,char*) ;
 TYPE_1__ svs ;

void SV_AuthorizeIpPacket( netadr_t from ) {
 int challenge;
 int i;
 char *s;
 char *r;
 char ret[1024];

 if ( !NET_CompareBaseAdr( from, svs.authorizeAddress ) ) {
  Com_Printf( "SV_AuthorizeIpPacket: not from authorize server\n" );
  return;
 }

 challenge = atoi( Cmd_Argv( 1 ) );

 for (i = 0 ; i < MAX_CHALLENGES ; i++) {
  if ( svs.challenges[i].challenge == challenge ) {
   break;
  }
 }
 if ( i == MAX_CHALLENGES ) {
  Com_Printf( "SV_AuthorizeIpPacket: challenge not found\n" );
  return;
 }


 svs.challenges[i].pingTime = svs.time;
 s = Cmd_Argv( 2 );
 r = Cmd_Argv( 3 );

 if ( !Q_stricmp( s, "demo" ) ) {
  if ( Cvar_VariableValue( "fs_restrict" ) ) {

   NET_OutOfBandPrint( NS_SERVER, svs.challenges[i].adr,
    "challengeResponse %i", svs.challenges[i].challenge );
   return;
  }

  NET_OutOfBandPrint( NS_SERVER, svs.challenges[i].adr, "print\nServer is not a demo server\n" );

  Com_Memset( &svs.challenges[i], 0, sizeof( svs.challenges[i] ) );
  return;
 }
 if ( !Q_stricmp( s, "accept" ) ) {
  NET_OutOfBandPrint( NS_SERVER, svs.challenges[i].adr,
   "challengeResponse %i", svs.challenges[i].challenge );
  return;
 }
 if ( !Q_stricmp( s, "unknown" ) ) {
  if (!r) {
   NET_OutOfBandPrint( NS_SERVER, svs.challenges[i].adr, "print\nAwaiting CD key authorization\n" );
  } else {
   sprintf(ret, "print\n%s\n", r);
   NET_OutOfBandPrint( NS_SERVER, svs.challenges[i].adr, ret );
  }

  Com_Memset( &svs.challenges[i], 0, sizeof( svs.challenges[i] ) );
  return;
 }


 if (!r) {
  NET_OutOfBandPrint( NS_SERVER, svs.challenges[i].adr, "print\nSomeone is using this CD Key\n" );
 } else {
  sprintf(ret, "print\n%s\n", r);
  NET_OutOfBandPrint( NS_SERVER, svs.challenges[i].adr, ret );
 }


 Com_Memset( &svs.challenges[i], 0, sizeof( svs.challenges[i] ) );
}
