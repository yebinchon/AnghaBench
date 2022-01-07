
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* coords; } ;
typedef TYPE_1__ TESSvertex ;
typedef int TESStesselator ;
typedef int TESSreal ;


 int CallCombine (int *,TYPE_1__*,int *,int ) ;
 int TRUE ;
 int VertexWeights (TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;

__attribute__((used)) static void GetIntersectData( TESStesselator *tess, TESSvertex *isect,
        TESSvertex *orgUp, TESSvertex *dstUp,
        TESSvertex *orgLo, TESSvertex *dstLo )





{
 TESSreal weights[4];

 isect->coords[0] = isect->coords[1] = isect->coords[2] = 0;
 VertexWeights( isect, orgUp, dstUp, &weights[0] );
 VertexWeights( isect, orgLo, dstLo, &weights[2] );

 CallCombine( tess, isect, weights, TRUE );
}
