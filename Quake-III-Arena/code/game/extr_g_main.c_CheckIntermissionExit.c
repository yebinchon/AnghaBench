
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {size_t clientNum; int* stats; } ;
struct TYPE_10__ {scalar_t__ connected; } ;
struct TYPE_12__ {TYPE_3__ ps; TYPE_2__ pers; scalar_t__ readyToExit; } ;
typedef TYPE_4__ gclient_t ;
struct TYPE_9__ {int svFlags; } ;
struct TYPE_16__ {TYPE_1__ r; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {scalar_t__ time; scalar_t__ intermissiontime; scalar_t__ exitTime; scalar_t__ readyToExit; TYPE_4__* clients; } ;


 scalar_t__ CON_CONNECTED ;
 int ExitLevel () ;
 scalar_t__ GT_SINGLE_PLAYER ;
 size_t STAT_CLIENTS_READY ;
 int SVF_BOT ;
 TYPE_8__* g_entities ;
 TYPE_7__ g_gametype ;
 TYPE_6__ g_maxclients ;
 TYPE_5__ level ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void CheckIntermissionExit( void ) {
 int ready, notReady;
 int i;
 gclient_t *cl;
 int readyMask;

 if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
  return;
 }


 ready = 0;
 notReady = 0;
 readyMask = 0;
 for (i=0 ; i< g_maxclients.integer ; i++) {
  cl = level.clients + i;
  if ( cl->pers.connected != CON_CONNECTED ) {
   continue;
  }
  if ( g_entities[cl->ps.clientNum].r.svFlags & SVF_BOT ) {
   continue;
  }

  if ( cl->readyToExit ) {
   ready++;
   if ( i < 16 ) {
    readyMask |= 1 << i;
   }
  } else {
   notReady++;
  }
 }



 for (i=0 ; i< g_maxclients.integer ; i++) {
  cl = level.clients + i;
  if ( cl->pers.connected != CON_CONNECTED ) {
   continue;
  }
  cl->ps.stats[STAT_CLIENTS_READY] = readyMask;
 }


 if ( level.time < level.intermissiontime + 5000 ) {
  return;
 }


 if ( !ready ) {
  level.readyToExit = qfalse;
  return;
 }


 if ( !notReady ) {
  ExitLevel();
  return;
 }


 if ( !level.readyToExit ) {
  level.readyToExit = qtrue;
  level.exitTime = level.time;
 }



 if ( level.time < level.exitTime + 10000 ) {
  return;
 }

 ExitLevel();
}
