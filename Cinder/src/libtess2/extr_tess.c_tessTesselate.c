
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int userData; int (* memfree ) (int ,int *) ;} ;
struct TYPE_8__ {int windingRule; scalar_t__ outOfMemory; int * mesh; TYPE_4__ alloc; int env; int * normal; int * elements; int * vertices; } ;
typedef TYPE_1__ TESStesselator ;
typedef int TESSreal ;
typedef int TESSmesh ;


 int OutputContours (TYPE_1__*,int *,int) ;
 int OutputPolymesh (TYPE_1__*,int *,int,int,int) ;
 int TESS_BOUNDARY_CONTOURS ;
 int TRUE ;
 int longjmp (int ,int) ;
 scalar_t__ setjmp (int ) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;
 int tessComputeInterior (TYPE_1__*) ;
 int tessMeshCheckMesh (int *) ;
 int tessMeshDeleteMesh (TYPE_4__*,int *) ;
 int tessMeshSetWindingNumber (int *,int,int ) ;
 int tessMeshTessellateInterior (int *) ;
 int tessProjectPolygon (TYPE_1__*) ;

int tessTesselate( TESStesselator *tess, int windingRule, int elementType,
      int polySize, int vertexSize, const TESSreal* normal )
{
 TESSmesh *mesh;
 int rc = 1;

 if (tess->vertices != ((void*)0)) {
  tess->alloc.memfree( tess->alloc.userData, tess->vertices );
  tess->vertices = 0;
 }
 if (tess->elements != ((void*)0)) {
  tess->alloc.memfree( tess->alloc.userData, tess->elements );
  tess->elements = 0;
 }

 if (normal)
 {
  tess->normal[0] = normal[0];
  tess->normal[1] = normal[1];
  tess->normal[2] = normal[2];
 }

 tess->windingRule = windingRule;

 if (vertexSize < 2)
  vertexSize = 2;
 if (vertexSize > 3)
  vertexSize = 3;

 if (setjmp(tess->env) != 0) {

  return 0;
 }

 if (!tess->mesh)
 {
  return 0;
 }




 tessProjectPolygon( tess );







 if ( !tessComputeInterior( tess ) ) {
  longjmp(tess->env,1);
 }

 mesh = tess->mesh;





 if (elementType == TESS_BOUNDARY_CONTOURS) {
  rc = tessMeshSetWindingNumber( mesh, 1, TRUE );
 } else {
  rc = tessMeshTessellateInterior( mesh );
 }
 if (rc == 0) longjmp(tess->env,1);

 tessMeshCheckMesh( mesh );

 if (elementType == TESS_BOUNDARY_CONTOURS) {
  OutputContours( tess, mesh, vertexSize );
 }
 else
 {
  OutputPolymesh( tess, mesh, elementType, polySize, vertexSize );
 }

 tessMeshDeleteMesh( &tess->alloc, mesh );
 tess->mesh = ((void*)0);

 if (tess->outOfMemory)
  return 0;
 return 1;
}
