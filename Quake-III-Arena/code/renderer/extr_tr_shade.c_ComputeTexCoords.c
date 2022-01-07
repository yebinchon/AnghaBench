
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_18__ {TYPE_4__* bundle; } ;
typedef TYPE_6__ shaderStage_t ;
struct TYPE_21__ {TYPE_3__* currentEntity; } ;
struct TYPE_20__ {int (* Error ) (int ,char*,int,int ) ;} ;
struct TYPE_17__ {void**** texcoords; } ;
struct TYPE_19__ {int numVertexes; TYPE_1__* shader; TYPE_5__ svars; int * xyz; void**** texCoords; } ;
struct TYPE_16__ {int tcGen; int numTexMods; TYPE_10__* texMods; int * tcGenVectors; } ;
struct TYPE_14__ {int shaderTexCoord; } ;
struct TYPE_15__ {TYPE_2__ e; } ;
struct TYPE_13__ {int name; } ;
struct TYPE_12__ {int type; int rotateSpeed; int wave; int scale; int scroll; } ;


 int Com_Memset (void***,int ,int) ;
 void* DotProduct (int ,int ) ;
 int ERR_DROP ;
 int NUM_TEXTURE_BUNDLES ;
 int RB_CalcEnvironmentTexCoords (float*) ;
 int RB_CalcFogTexCoords (float*) ;
 int RB_CalcRotateTexCoords (int ,float*) ;
 int RB_CalcScaleTexCoords (int ,float*) ;
 int RB_CalcScrollTexCoords (int ,float*) ;
 int RB_CalcStretchTexCoords (int *,float*) ;
 int RB_CalcTransformTexCoords (TYPE_10__*,float*) ;
 int RB_CalcTurbulentTexCoords (int *,float*) ;
 int TR_MAX_TEXMODS ;
 TYPE_9__ backEnd ;
 TYPE_8__ ri ;
 int stub1 (int ,char*,int,int ) ;
 TYPE_7__ tess ;

__attribute__((used)) static void ComputeTexCoords( shaderStage_t *pStage ) {
 int i;
 int b;

 for ( b = 0; b < NUM_TEXTURE_BUNDLES; b++ ) {
  int tm;




  switch ( pStage->bundle[b].tcGen )
  {
  case 139:
   Com_Memset( tess.svars.texcoords[b], 0, sizeof( float ) * 2 * tess.numVertexes );
   break;
  case 137:
   for ( i = 0 ; i < tess.numVertexes ; i++ ) {
    tess.svars.texcoords[b][i][0] = tess.texCoords[i][0][0];
    tess.svars.texcoords[b][i][1] = tess.texCoords[i][0][1];
   }
   break;
  case 138:
   for ( i = 0 ; i < tess.numVertexes ; i++ ) {
    tess.svars.texcoords[b][i][0] = tess.texCoords[i][1][0];
    tess.svars.texcoords[b][i][1] = tess.texCoords[i][1][1];
   }
   break;
  case 136:
   for ( i = 0 ; i < tess.numVertexes ; i++ ) {
    tess.svars.texcoords[b][i][0] = DotProduct( tess.xyz[i], pStage->bundle[b].tcGenVectors[0] );
    tess.svars.texcoords[b][i][1] = DotProduct( tess.xyz[i], pStage->bundle[b].tcGenVectors[1] );
   }
   break;
  case 140:
   RB_CalcFogTexCoords( ( float * ) tess.svars.texcoords[b] );
   break;
  case 141:
   RB_CalcEnvironmentTexCoords( ( float * ) tess.svars.texcoords[b] );
   break;
  case 142:
   return;
  }




  for ( tm = 0; tm < pStage->bundle[b].numTexMods ; tm++ ) {
   switch ( pStage->bundle[b].texMods[tm].type )
   {
   case 134:
    tm = TR_MAX_TEXMODS;
    break;

   case 128:
    RB_CalcTurbulentTexCoords( &pStage->bundle[b].texMods[tm].wave,
                       ( float * ) tess.svars.texcoords[b] );
    break;

   case 135:
    RB_CalcScrollTexCoords( backEnd.currentEntity->e.shaderTexCoord,
          ( float * ) tess.svars.texcoords[b] );
    break;

   case 131:
    RB_CalcScrollTexCoords( pStage->bundle[b].texMods[tm].scroll,
           ( float * ) tess.svars.texcoords[b] );
    break;

   case 132:
    RB_CalcScaleTexCoords( pStage->bundle[b].texMods[tm].scale,
          ( float * ) tess.svars.texcoords[b] );
    break;

   case 130:
    RB_CalcStretchTexCoords( &pStage->bundle[b].texMods[tm].wave,
                     ( float * ) tess.svars.texcoords[b] );
    break;

   case 129:
    RB_CalcTransformTexCoords( &pStage->bundle[b].texMods[tm],
                       ( float * ) tess.svars.texcoords[b] );
    break;

   case 133:
    RB_CalcRotateTexCoords( pStage->bundle[b].texMods[tm].rotateSpeed,
          ( float * ) tess.svars.texcoords[b] );
    break;

   default:
    ri.Error( ERR_DROP, "ERROR: unknown texmod '%d' in shader '%s'\n", pStage->bundle[b].texMods[tm].type, tess.shader->name );
    break;
   }
  }
 }
}
