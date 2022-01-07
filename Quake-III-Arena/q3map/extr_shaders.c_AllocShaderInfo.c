
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double vertexScale; void* notjunc; void* forceSunLight; void* noVertexShadows; void* vertexShadows; void* patchShadows; void* forceVLight; void* forceTraceLight; scalar_t__ lightmapSampleSize; int backsplashDistance; int backsplashFraction; int contents; } ;
typedef TYPE_1__ shaderInfo_t ;


 int CONTENTS_SOLID ;
 int DEFAULT_BACKSPLASH_DISTANCE ;
 int DEFAULT_BACKSPLASH_FRACTION ;
 int Error (char*) ;
 size_t MAX_SURFACE_INFO ;
 size_t numShaderInfo ;
 void* qfalse ;
 TYPE_1__* shaderInfo ;

__attribute__((used)) static shaderInfo_t *AllocShaderInfo( void ) {
 shaderInfo_t *si;

 if ( numShaderInfo == MAX_SURFACE_INFO ) {
  Error( "MAX_SURFACE_INFO" );
 }
 si = &shaderInfo[ numShaderInfo ];
 numShaderInfo++;



 si->contents = CONTENTS_SOLID;

 si->backsplashFraction = DEFAULT_BACKSPLASH_FRACTION;
 si->backsplashDistance = DEFAULT_BACKSPLASH_DISTANCE;

 si->lightmapSampleSize = 0;
 si->forceTraceLight = qfalse;
 si->forceVLight = qfalse;
 si->patchShadows = qfalse;
 si->vertexShadows = qfalse;
 si->noVertexShadows = qfalse;
 si->forceSunLight = qfalse;
 si->vertexScale = 1.0;
 si->notjunc = qfalse;

 return si;
}
