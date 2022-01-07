
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int adrstr; } ;
typedef TYPE_3__ servernode_t ;
struct TYPE_6__ {size_t curvalue; } ;
struct TYPE_8__ {TYPE_2__ list; TYPE_1__* table; } ;
struct TYPE_5__ {TYPE_3__* servernode; } ;


 int EXEC_APPEND ;
 TYPE_4__ g_arenaservers ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int va (char*,int ) ;

__attribute__((used)) static void ArenaServers_Go( void ) {
 servernode_t* servernode;

 servernode = g_arenaservers.table[g_arenaservers.list.curvalue].servernode;
 if( servernode ) {
  trap_Cmd_ExecuteText( EXEC_APPEND, va( "connect %s\n", servernode->adrstr ) );
 }
}
