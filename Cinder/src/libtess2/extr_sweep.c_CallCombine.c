
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* callCombine ) (int *,int *) ;} ;
struct TYPE_5__ {int * coords; } ;
typedef TYPE_1__ TESSvertex ;
typedef TYPE_2__ TESStesselator ;
typedef int TESSreal ;


 int stub1 (int *,int *) ;

__attribute__((used)) static void CallCombine( TESStesselator *tess, TESSvertex *isect,
      TESSreal weights[4], int needed )
{
 TESSreal coords[3];


 coords[0] = isect->coords[0];
 coords[1] = isect->coords[1];
 coords[2] = isect->coords[2];

 (*tess->callCombine)( coords, weights );
}
