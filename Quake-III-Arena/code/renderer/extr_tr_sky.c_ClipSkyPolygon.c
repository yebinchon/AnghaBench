
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int qboolean ;
struct TYPE_2__ {int (* Error ) (int ,char*) ;} ;


 int AddSkyPolygon (int,float*) ;
 float DotProduct (float*,float*) ;
 int ERR_DROP ;
 int MAX_CLIP_VERTS ;
 float ON_EPSILON ;



 int VectorCopy (float*,float*) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ ri ;
 float** sky_clip ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void ClipSkyPolygon (int nump, vec3_t vecs, int stage)
{
 float *norm;
 float *v;
 qboolean front, back;
 float d, e;
 float dists[MAX_CLIP_VERTS];
 int sides[MAX_CLIP_VERTS];
 vec3_t newv[2][MAX_CLIP_VERTS];
 int newc[2];
 int i, j;

 if (nump > MAX_CLIP_VERTS-2)
  ri.Error (ERR_DROP, "ClipSkyPolygon: MAX_CLIP_VERTS");
 if (stage == 6)
 {
  AddSkyPolygon (nump, vecs);
  return;
 }

 front = back = qfalse;
 norm = sky_clip[stage];
 for (i=0, v = vecs ; i<nump ; i++, v+=3)
 {
  d = DotProduct (v, norm);
  if (d > ON_EPSILON)
  {
   front = qtrue;
   sides[i] = 129;
  }
  else if (d < -ON_EPSILON)
  {
   back = qtrue;
   sides[i] = 130;
  }
  else
   sides[i] = 128;
  dists[i] = d;
 }

 if (!front || !back)
 {
  ClipSkyPolygon (nump, vecs, stage+1);
  return;
 }


 sides[i] = sides[0];
 dists[i] = dists[0];
 VectorCopy (vecs, (vecs+(i*3)) );
 newc[0] = newc[1] = 0;

 for (i=0, v = vecs ; i<nump ; i++, v+=3)
 {
  switch (sides[i])
  {
  case 129:
   VectorCopy (v, newv[0][newc[0]]);
   newc[0]++;
   break;
  case 130:
   VectorCopy (v, newv[1][newc[1]]);
   newc[1]++;
   break;
  case 128:
   VectorCopy (v, newv[0][newc[0]]);
   newc[0]++;
   VectorCopy (v, newv[1][newc[1]]);
   newc[1]++;
   break;
  }

  if (sides[i] == 128 || sides[i+1] == 128 || sides[i+1] == sides[i])
   continue;

  d = dists[i] / (dists[i] - dists[i+1]);
  for (j=0 ; j<3 ; j++)
  {
   e = v[j] + d*(v[j+3] - v[j]);
   newv[0][newc[0]][j] = e;
   newv[1][newc[1]][j] = e;
  }
  newc[0]++;
  newc[1]++;
 }


 ClipSkyPolygon (newc[0], newv[0][0], stage+1);
 ClipSkyPolygon (newc[1], newv[1][0], stage+1);
}
