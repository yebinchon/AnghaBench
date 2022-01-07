
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* qboolean ;
struct TYPE_9__ {int buttons; scalar_t__ upmove; scalar_t__ rightmove; scalar_t__ forwardmove; } ;
struct TYPE_10__ {int localClient; TYPE_1__ cmd; } ;
struct TYPE_11__ {int inactivityTime; void* inactivityWarning; TYPE_2__ pers; } ;
typedef TYPE_3__ gclient_t ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int time; int clients; } ;


 int BUTTON_ATTACK ;
 TYPE_7__ g_inactivity ;
 TYPE_6__ level ;
 void* qfalse ;
 void* qtrue ;
 int trap_DropClient (TYPE_3__*,char*) ;
 int trap_SendServerCommand (TYPE_3__*,char*) ;

qboolean ClientInactivityTimer( gclient_t *client ) {
 if ( ! g_inactivity.integer ) {


  client->inactivityTime = level.time + 60 * 1000;
  client->inactivityWarning = qfalse;
 } else if ( client->pers.cmd.forwardmove ||
  client->pers.cmd.rightmove ||
  client->pers.cmd.upmove ||
  (client->pers.cmd.buttons & BUTTON_ATTACK) ) {
  client->inactivityTime = level.time + g_inactivity.integer * 1000;
  client->inactivityWarning = qfalse;
 } else if ( !client->pers.localClient ) {
  if ( level.time > client->inactivityTime ) {
   trap_DropClient( client - level.clients, "Dropped due to inactivity" );
   return qfalse;
  }
  if ( level.time > client->inactivityTime - 10000 && !client->inactivityWarning ) {
   client->inactivityWarning = qtrue;
   trap_SendServerCommand( client - level.clients, "cp \"Ten seconds until inactivity drop!\n\"" );
  }
 }
 return qtrue;
}
