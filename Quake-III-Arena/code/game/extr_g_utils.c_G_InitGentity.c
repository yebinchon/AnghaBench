
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ownerNum; } ;
struct TYPE_5__ {TYPE_3__* number; } ;
struct TYPE_7__ {char* classname; TYPE_2__ r; TYPE_1__ s; int inuse; } ;
typedef TYPE_3__ gentity_t ;


 int ENTITYNUM_NONE ;
 int g_entities ;
 int qtrue ;

void G_InitGentity( gentity_t *e ) {
 e->inuse = qtrue;
 e->classname = "noclass";
 e->s.number = e - g_entities;
 e->r.ownerNum = ENTITYNUM_NONE;
}
