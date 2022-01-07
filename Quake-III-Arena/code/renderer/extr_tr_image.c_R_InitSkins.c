
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numSurfaces; int shader; struct TYPE_6__** surfaces; int name; } ;
typedef TYPE_1__ skin_t ;
struct TYPE_8__ {TYPE_1__* (* Hunk_Alloc ) (int,int ) ;} ;
struct TYPE_7__ {int numSkins; int defaultShader; TYPE_1__** skins; } ;


 int Q_strncpyz (int ,char*,int) ;
 int h_low ;
 TYPE_5__ ri ;
 TYPE_1__* stub1 (int,int ) ;
 TYPE_1__* stub2 (int,int ) ;
 TYPE_2__ tr ;

void R_InitSkins( void ) {
 skin_t *skin;

 tr.numSkins = 1;


 skin = tr.skins[0] = ri.Hunk_Alloc( sizeof( skin_t ), h_low );
 Q_strncpyz( skin->name, "<default skin>", sizeof( skin->name ) );
 skin->numSurfaces = 1;
 skin->surfaces[0] = ri.Hunk_Alloc( sizeof( *skin->surfaces ), h_low );
 skin->surfaces[0]->shader = tr.defaultShader;
}
