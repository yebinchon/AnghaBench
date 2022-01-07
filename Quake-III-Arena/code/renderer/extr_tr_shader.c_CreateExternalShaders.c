
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* sunShader; void* flareShader; void* projectionShadowShader; } ;


 int LIGHTMAP_NONE ;
 void* R_FindShader (char*,int ,int ) ;
 int qtrue ;
 TYPE_1__ tr ;

__attribute__((used)) static void CreateExternalShaders( void ) {
 tr.projectionShadowShader = R_FindShader( "projectionShadow", LIGHTMAP_NONE, qtrue );
 tr.flareShader = R_FindShader( "flareShader", LIGHTMAP_NONE, qtrue );
 tr.sunShader = R_FindShader( "sun", LIGHTMAP_NONE, qtrue );
}
