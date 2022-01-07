
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* vertices; } ;
typedef TYPE_1__ TESStesselator ;
typedef int TESSreal ;



const TESSreal* tessGetVertices( TESStesselator *tess )
{
 return tess->vertices;
}
