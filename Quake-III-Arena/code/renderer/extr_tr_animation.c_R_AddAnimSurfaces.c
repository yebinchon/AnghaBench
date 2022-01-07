
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trRefEntity_t ;
typedef int shader_t ;
struct TYPE_7__ {int ofsEnd; int shaderIndex; } ;
typedef TYPE_2__ md4Surface_t ;
struct TYPE_8__ {int ofsSurfaces; int numSurfaces; } ;
typedef TYPE_3__ md4LOD_t ;
struct TYPE_9__ {int ofsLODs; } ;
typedef TYPE_4__ md4Header_t ;
typedef int byte ;
struct TYPE_10__ {TYPE_1__* currentModel; } ;
struct TYPE_6__ {TYPE_4__* md4; } ;


 int R_AddDrawSurf (void*,int *,int ,int ) ;
 int * R_GetShaderByHandle (int ) ;
 int qfalse ;
 TYPE_5__ tr ;

void R_AddAnimSurfaces( trRefEntity_t *ent ) {
 md4Header_t *header;
 md4Surface_t *surface;
 md4LOD_t *lod;
 shader_t *shader;
 int i;

 header = tr.currentModel->md4;
 lod = (md4LOD_t *)( (byte *)header + header->ofsLODs );

 surface = (md4Surface_t *)( (byte *)lod + lod->ofsSurfaces );
 for ( i = 0 ; i < lod->numSurfaces ; i++ ) {
  shader = R_GetShaderByHandle( surface->shaderIndex );
  R_AddDrawSurf( (void *)surface, shader, 0 , qfalse );
  surface = (md4Surface_t *)( (byte *)surface + surface->ofsEnd );
 }
}
