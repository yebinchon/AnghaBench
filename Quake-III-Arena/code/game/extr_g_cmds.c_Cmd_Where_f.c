
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int origin; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int g_entities ;
 int trap_SendServerCommand (TYPE_2__*,int ) ;
 int va (char*,int ) ;
 int vtos (int ) ;

void Cmd_Where_f( gentity_t *ent ) {
 trap_SendServerCommand( ent-g_entities, va("print \"%s\n\"", vtos( ent->s.origin ) ) );
}
