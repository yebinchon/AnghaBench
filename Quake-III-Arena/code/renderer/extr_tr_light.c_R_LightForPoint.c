
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int origin; } ;
struct TYPE_9__ {int lightDir; int directedLight; int ambientLight; TYPE_2__ e; } ;
typedef TYPE_3__ trRefEntity_t ;
typedef int ent ;
struct TYPE_10__ {TYPE_1__* world; } ;
struct TYPE_7__ {int * lightGridData; } ;


 int Com_Memset (TYPE_3__*,int ,int) ;
 int R_SetupEntityLightingGrid (TYPE_3__*) ;
 int VectorCopy (int ,int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_4__ tr ;

int R_LightForPoint( vec3_t point, vec3_t ambientLight, vec3_t directedLight, vec3_t lightDir )
{
 trRefEntity_t ent;


 if ( tr.world->lightGridData == ((void*)0) )
   return qfalse;

 Com_Memset(&ent, 0, sizeof(ent));
 VectorCopy( point, ent.e.origin );
 R_SetupEntityLightingGrid( &ent );
 VectorCopy(ent.ambientLight, ambientLight);
 VectorCopy(ent.directedLight, directedLight);
 VectorCopy(ent.lightDir, lightDir);

 return qtrue;
}
