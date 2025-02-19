
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int ** texcoords; int ** normals; int ** verts; } ;
typedef TYPE_4__ triangle_t ;
struct TYPE_14__ {TYPE_3__* pt; } ;
typedef TYPE_5__ tf_triangle ;
struct TYPE_11__ {int * v; } ;
struct TYPE_10__ {int * v; } ;
struct TYPE_12__ {int v; int u; TYPE_2__ n; TYPE_1__ p; } ;
typedef int FILE ;


 int ByteSwapTri (TYPE_5__*) ;
 int Error (char*) ;
 int POLYSET_MAXTRIANGLES ;
 int fread (TYPE_5__*,int,int,int *) ;

__attribute__((used)) static void ReadPolysetGeometry( triangle_t *tripool, FILE *input, int count, triangle_t *ptri )
{
 tf_triangle tri;
 int i;

 for (i = 0; i < count; ++i) {
  int j;

  fread( &tri, sizeof(tf_triangle), 1, input );
  ByteSwapTri (&tri);
  for (j=0 ; j<3 ; j++)
  {
   int k;

   for (k=0 ; k<3 ; k++)
   {
    ptri->verts[j][k] = tri.pt[j].p.v[k];
    ptri->normals[j][k] = tri.pt[j].n.v[k];

   }

   ptri->texcoords[j][0] = tri.pt[j].u;
   ptri->texcoords[j][1] = tri.pt[j].v;
  }

  ptri++;
  if ((ptri - tripool ) >= POLYSET_MAXTRIANGLES)
   Error ("Error: too many triangles; increase POLYSET_MAXTRIANGLES\n");
 }
}
