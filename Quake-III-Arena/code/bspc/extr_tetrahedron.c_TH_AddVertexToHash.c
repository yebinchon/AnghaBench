
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* hashnext; int v; } ;
typedef TYPE_1__ th_vertex_t ;
struct TYPE_5__ {TYPE_1__** vertexhash; } ;


 int TH_HashVec (int ) ;
 TYPE_2__ thworld ;

void TH_AddVertexToHash(th_vertex_t *vertex)
{
 int hashvalue;

 hashvalue = TH_HashVec(vertex->v);
 vertex->hashnext = thworld.vertexhash[hashvalue];
 thworld.vertexhash[hashvalue] = vertex;
}
