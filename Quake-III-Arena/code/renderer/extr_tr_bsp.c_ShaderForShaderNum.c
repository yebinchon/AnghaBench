
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ defaultShader; } ;
typedef TYPE_1__ shader_t ;
struct TYPE_12__ {int shader; } ;
typedef TYPE_2__ dshader_t ;
struct TYPE_18__ {scalar_t__ hardwareType; } ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {int (* Error ) (int ,char*,int) ;} ;
struct TYPE_14__ {int numShaders; TYPE_2__* shaders; } ;
struct TYPE_13__ {TYPE_1__* defaultShader; } ;


 int ERR_DROP ;
 scalar_t__ GLHW_PERMEDIA2 ;
 int LIGHTMAP_BY_VERTEX ;
 int LIGHTMAP_WHITEIMAGE ;
 int LittleLong (int) ;
 TYPE_1__* R_FindShader (int ,int,int ) ;
 TYPE_8__ glConfig ;
 int qtrue ;
 TYPE_7__* r_fullbright ;
 TYPE_6__* r_vertexLight ;
 TYPE_5__ ri ;
 TYPE_4__ s_worldData ;
 int stub1 (int ,char*,int) ;
 TYPE_3__ tr ;

__attribute__((used)) static shader_t *ShaderForShaderNum( int shaderNum, int lightmapNum ) {
 shader_t *shader;
 dshader_t *dsh;

 shaderNum = LittleLong( shaderNum );
 if ( shaderNum < 0 || shaderNum >= s_worldData.numShaders ) {
  ri.Error( ERR_DROP, "ShaderForShaderNum: bad num %i", shaderNum );
 }
 dsh = &s_worldData.shaders[ shaderNum ];

 if ( r_vertexLight->integer || glConfig.hardwareType == GLHW_PERMEDIA2 ) {
  lightmapNum = LIGHTMAP_BY_VERTEX;
 }

 if ( r_fullbright->integer ) {
  lightmapNum = LIGHTMAP_WHITEIMAGE;
 }

 shader = R_FindShader( dsh->shader, lightmapNum, qtrue );


 if ( shader->defaultShader ) {
  return tr.defaultShader;
 }

 return shader;
}
