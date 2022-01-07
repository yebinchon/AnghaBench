
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int mapname; } ;
typedef TYPE_5__ servernode_t ;
typedef int picname ;
struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {scalar_t__ shader; TYPE_1__ generic; } ;
struct TYPE_10__ {size_t curvalue; int numitems; } ;
struct TYPE_12__ {TYPE_2__ mappic; TYPE_4__ list; TYPE_3__* table; } ;
struct TYPE_9__ {TYPE_5__* servernode; } ;


 int Com_sprintf (char*,int,char*,int ) ;
 TYPE_6__ g_arenaservers ;

__attribute__((used)) static void ArenaServers_UpdatePicture( void ) {
 static char picname[64];
 servernode_t* servernodeptr;

 if( !g_arenaservers.list.numitems ) {
  g_arenaservers.mappic.generic.name = ((void*)0);
 }
 else {
  servernodeptr = g_arenaservers.table[g_arenaservers.list.curvalue].servernode;
  Com_sprintf( picname, sizeof(picname), "levelshots/%s.tga", servernodeptr->mapname );
  g_arenaservers.mappic.generic.name = picname;

 }


 g_arenaservers.mappic.shader = 0;
}
