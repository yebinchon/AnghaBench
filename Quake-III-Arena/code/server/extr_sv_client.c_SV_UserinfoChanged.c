
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int remoteAddress; } ;
struct TYPE_7__ {int rate; int snapshotMsec; int userinfo; TYPE_1__ netchan; int name; } ;
typedef TYPE_2__ client_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;


 int Info_SetValueForKey (int ,char*,char*) ;
 char* Info_ValueForKey (int ,char*) ;
 char* NET_AdrToString (int ) ;
 int NET_IsLocalAddress (int ) ;
 int Q_strncpyz (int ,char*,int) ;
 scalar_t__ Sys_IsLANAddress (int ) ;
 int atoi (char*) ;
 TYPE_4__* com_dedicated ;
 int strlen (char*) ;
 TYPE_3__* sv_lanForceRate ;

void SV_UserinfoChanged( client_t *cl ) {
 char *val;
 int i;


 Q_strncpyz( cl->name, Info_ValueForKey (cl->userinfo, "name"), sizeof(cl->name) );





 if ( Sys_IsLANAddress( cl->netchan.remoteAddress ) && com_dedicated->integer != 2 && sv_lanForceRate->integer == 1) {
  cl->rate = 99999;
 } else {
  val = Info_ValueForKey (cl->userinfo, "rate");
  if (strlen(val)) {
   i = atoi(val);
   cl->rate = i;
   if (cl->rate < 1000) {
    cl->rate = 1000;
   } else if (cl->rate > 90000) {
    cl->rate = 90000;
   }
  } else {
   cl->rate = 3000;
  }
 }
 val = Info_ValueForKey (cl->userinfo, "handicap");
 if (strlen(val)) {
  i = atoi(val);
  if (i<=0 || i>100 || strlen(val) > 4) {
   Info_SetValueForKey( cl->userinfo, "handicap", "100" );
  }
 }


 val = Info_ValueForKey (cl->userinfo, "snaps");
 if (strlen(val)) {
  i = atoi(val);
  if ( i < 1 ) {
   i = 1;
  } else if ( i > 30 ) {
   i = 30;
  }
  cl->snapshotMsec = 1000/i;
 } else {
  cl->snapshotMsec = 50;
 }





 val = Info_ValueForKey (cl->userinfo, "ip");
 if (!val[0])
 {

  if ( !NET_IsLocalAddress(cl->netchan.remoteAddress) )
   Info_SetValueForKey( cl->userinfo, "ip", NET_AdrToString( cl->netchan.remoteAddress ) );
  else

   Info_SetValueForKey( cl->userinfo, "ip", "localhost" );
 }
}
