
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ planenum; scalar_t__ shaderInfo; } ;
typedef TYPE_1__ side_t ;
struct TYPE_5__ {scalar_t__ planenum; scalar_t__ shaderInfo; int count; } ;


 int Error (char*) ;
 int MAX_SIDE_REFS ;
 int numSideRefs ;
 TYPE_2__* sideRefs ;

void AddSideRef( side_t *side ) {
 int i;

 for ( i = 0 ; i < numSideRefs ; i++ ) {
  if ( side->planenum == sideRefs[i].planenum
   && side->shaderInfo == sideRefs[i].shaderInfo ) {
   sideRefs[i].count++;
   return;
  }
 }

 if ( numSideRefs == MAX_SIDE_REFS ) {
  Error( "MAX_SIDE_REFS" );
 }

 sideRefs[i].planenum = side->planenum;
 sideRefs[i].shaderInfo = side->shaderInfo;
 sideRefs[i].count++;
 numSideRefs++;
}
