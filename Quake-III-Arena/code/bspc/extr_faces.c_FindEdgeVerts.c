
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;


 int HASH_SIZE ;
 int* edge_verts ;
 int* hashverts ;
 int num_edge_verts ;
 int numvertexes ;
 int* vertexchain ;

void FindEdgeVerts (vec3_t v1, vec3_t v2)
{
 int x1, x2, y1, y2, t;
 int x, y;
 int vnum;
 x1 = (4096 + (int)(v1[0]+0.5)) >> 7;
 y1 = (4096 + (int)(v1[1]+0.5)) >> 7;
 x2 = (4096 + (int)(v2[0]+0.5)) >> 7;
 y2 = (4096 + (int)(v2[1]+0.5)) >> 7;

 if (x1 > x2)
 {
  t = x1;
  x1 = x2;
  x2 = t;
 }
 if (y1 > y2)
 {
  t = y1;
  y1 = y2;
  y2 = t;
 }
 num_edge_verts = 0;
 for (x=x1 ; x <= x2 ; x++)
 {
  for (y=y1 ; y <= y2 ; y++)
  {
   for (vnum=hashverts[y*HASH_SIZE+x] ; vnum ; vnum=vertexchain[vnum])
   {
    edge_verts[num_edge_verts++] = vnum;
   }
  }
 }
}
