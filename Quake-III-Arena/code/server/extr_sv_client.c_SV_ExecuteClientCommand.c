
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ name; int (* func ) (TYPE_2__*) ;} ;
typedef TYPE_1__ ucmd_t ;
typedef scalar_t__ qboolean ;
struct TYPE_10__ {int name; } ;
typedef TYPE_2__ client_t ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {int clients; } ;


 int Cmd_Argv (int ) ;
 int Cmd_TokenizeString (char const*) ;
 int Com_DPrintf (char*,int ,int ) ;
 int GAME_CLIENT_COMMAND ;
 scalar_t__ SS_GAME ;
 int VM_Call (int ,int ,TYPE_2__*) ;
 int gvm ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int strcmp (int ,scalar_t__) ;
 int stub1 (TYPE_2__*) ;
 TYPE_5__ sv ;
 TYPE_4__ svs ;
 TYPE_1__* ucmds ;

void SV_ExecuteClientCommand( client_t *cl, const char *s, qboolean clientOK ) {
 ucmd_t *u;
 qboolean bProcessed = qfalse;

 Cmd_TokenizeString( s );


 for (u=ucmds ; u->name ; u++) {
  if (!strcmp (Cmd_Argv(0), u->name) ) {
   u->func( cl );
   bProcessed = qtrue;
   break;
  }
 }

 if (clientOK) {

  if (!u->name && sv.state == SS_GAME) {
   VM_Call( gvm, GAME_CLIENT_COMMAND, cl - svs.clients );
  }
 }
 else if (!bProcessed)
  Com_DPrintf( "client text ignored for %s: %s\n", cl->name, Cmd_Argv(0) );
}
