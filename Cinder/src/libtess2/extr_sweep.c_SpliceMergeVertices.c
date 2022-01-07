
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Org; } ;
struct TYPE_9__ {int env; int mesh; } ;
typedef TYPE_1__ TESStesselator ;
typedef double TESSreal ;
typedef TYPE_2__ TESShalfEdge ;


 int CallCombine (TYPE_1__*,int ,double*,int ) ;
 int FALSE ;
 int longjmp (int ,int) ;
 int tessMeshSplice (int ,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void SpliceMergeVertices( TESStesselator *tess, TESShalfEdge *e1,
        TESShalfEdge *e2 )




{
 TESSreal weights[4] = { 0.5, 0.5, 0.0, 0.0 };

 CallCombine( tess, e1->Org, weights, FALSE );
 if ( !tessMeshSplice( tess->mesh, e1, e2 ) ) longjmp(tess->env,1);
}
