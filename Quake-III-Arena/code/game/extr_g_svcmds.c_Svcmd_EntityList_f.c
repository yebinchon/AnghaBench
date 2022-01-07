
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int eType; } ;
struct TYPE_6__ {int classname; TYPE_1__ s; int inuse; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_7__ {int num_entities; } ;
 int G_Printf (char*,...) ;
 TYPE_2__* g_entities ;
 TYPE_3__ level ;

void Svcmd_EntityList_f (void) {
 int e;
 gentity_t *check;

 check = g_entities+1;
 for (e = 1; e < level.num_entities ; e++, check++) {
  if ( !check->inuse ) {
   continue;
  }
  G_Printf("%3i:", e);
  switch ( check->s.eType ) {
  case 138:
   G_Printf("ET_GENERAL          ");
   break;
  case 132:
   G_Printf("ET_PLAYER           ");
   break;
  case 135:
   G_Printf("ET_ITEM             ");
   break;
  case 134:
   G_Printf("ET_MISSILE          ");
   break;
  case 133:
   G_Printf("ET_MOVER            ");
   break;
  case 139:
   G_Printf("ET_BEAM             ");
   break;
  case 131:
   G_Printf("ET_PORTAL           ");
   break;
  case 129:
   G_Printf("ET_SPEAKER          ");
   break;
  case 130:
   G_Printf("ET_PUSH_TRIGGER     ");
   break;
  case 128:
   G_Printf("ET_TELEPORT_TRIGGER ");
   break;
  case 136:
   G_Printf("ET_INVISIBLE        ");
   break;
  case 137:
   G_Printf("ET_GRAPPLE          ");
   break;
  default:
   G_Printf("%3i                 ", check->s.eType);
   break;
  }

  if ( check->classname ) {
   G_Printf("%s", check->classname);
  }
  G_Printf("\n");
 }
}
