
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ deferred; scalar_t__ infoValid; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_5__ {int maxclients; TYPE_1__* clientinfo; } ;


 int CG_LoadClientInfo (TYPE_1__*) ;
 int CG_Printf (char*) ;
 TYPE_2__ cgs ;
 scalar_t__ qfalse ;
 int trap_MemoryRemaining () ;

void CG_LoadDeferredPlayers( void ) {
 int i;
 clientInfo_t *ci;


 for ( i = 0, ci = cgs.clientinfo ; i < cgs.maxclients ; i++, ci++ ) {
  if ( ci->infoValid && ci->deferred ) {

   if ( trap_MemoryRemaining() < 4000000 ) {
    CG_Printf( "Memory is low.  Using deferred model.\n" );
    ci->deferred = qfalse;
    continue;
   }
   CG_LoadClientInfo( ci );

  }
 }
}
