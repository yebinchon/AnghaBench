
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rate; } ;
typedef TYPE_1__ client_t ;
struct TYPE_5__ {int integer; } ;


 int Cvar_Set (char*,char*) ;
 int HEADER_RATE_BYTES ;
 TYPE_2__* sv_maxRate ;

__attribute__((used)) static int SV_RateMsec( client_t *client, int messageSize ) {
 int rate;
 int rateMsec;


 if ( messageSize > 1500 ) {
  messageSize = 1500;
 }
 rate = client->rate;
 if ( sv_maxRate->integer ) {
  if ( sv_maxRate->integer < 1000 ) {
   Cvar_Set( "sv_MaxRate", "1000" );
  }
  if ( sv_maxRate->integer < rate ) {
   rate = sv_maxRate->integer;
  }
 }
 rateMsec = ( messageSize + HEADER_RATE_BYTES ) * 1000 / rate;

 return rateMsec;
}
