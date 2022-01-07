
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signbits; int plane; } ;


 scalar_t__ CM_PlaneEqual (TYPE_1__*,float*,int*) ;
 int CM_SignbitsForNormal (float*) ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int MAX_PATCH_PLANES ;
 int Vector4Copy (float*,int ) ;
 int numPlanes ;
 TYPE_1__* planes ;
 int qfalse ;

int CM_FindPlane2(float plane[4], int *flipped) {
 int i;


 for ( i = 0 ; i < numPlanes ; i++ ) {
  if (CM_PlaneEqual(&planes[i], plane, flipped)) return i;
 }


 if ( numPlanes == MAX_PATCH_PLANES ) {
  Com_Error( ERR_DROP, "MAX_PATCH_PLANES" );
 }

 Vector4Copy( plane, planes[numPlanes].plane );
 planes[numPlanes].signbits = CM_SignbitsForNormal( plane );

 numPlanes++;

 *flipped = qfalse;

 return numPlanes-1;
}
