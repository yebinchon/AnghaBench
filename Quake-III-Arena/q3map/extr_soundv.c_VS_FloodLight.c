
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int winding_t ;
struct TYPE_16__ {int type; float photons; float* origin; int radiusByDist; double* normal; int w; void* insolid; int atten_disttype; } ;
typedef TYPE_1__ vsound_t ;
typedef float* vec3_t ;
struct TYPE_15__ {float* normal; void* dist; } ;
struct TYPE_17__ {size_t numplanes; float** points; int cluster; int surfaceNum; struct TYPE_17__* clusterTested; struct TYPE_17__* facetTested; void* type; TYPE_13__ endplane; TYPE_13__ farplane; TYPE_13__* planes; } ;
typedef TYPE_2__ lightvolume_t ;
struct TYPE_18__ {int cluster; } ;
typedef TYPE_3__ dleaf_t ;


 int CrossProduct (double*,float*,float*) ;
 void* DotProduct (float*,float*) ;
 int LDAT_LINEAR ;






 float MAX_WORLD_COORD ;
 int RotatePointAroundVector (float*,double*,float*,float) ;
 void* VOLUME_NORMAL ;
 int VS_LightLeafnum (float*) ;
 int VS_PlaneFromPoints (TYPE_13__*,float*,float*,float*) ;
 int VS_R_CastLightAtSurface (TYPE_1__*,TYPE_2__*) ;
 int VS_R_FloodLight (TYPE_1__*,TYPE_2__*,int,int ) ;
 int VS_R_SubdivideAreaSpotLight (TYPE_1__*,int ,int *) ;
 int VS_R_SubdivideDirectedAreaLight (TYPE_1__*,int ,int *) ;
 int VS_R_SubdivideRadialAreaLight (TYPE_1__*,int ,int *) ;
 int VectorAdd (float*,float*,float*) ;
 int VectorClear (float*) ;
 int VectorCopy (float*,float*) ;
 int VectorInverse (float*) ;
 int VectorMA (float*,float,float*,float*) ;
 int VectorScale (float*,float,float*) ;
 TYPE_3__* dleafs ;
 float fabs (float) ;
 float lightLinearScale ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 void* qtrue ;
 float sqrt (float) ;

void VS_FloodLight(vsound_t *light)
{
 lightvolume_t volume;
 dleaf_t *leaf;
 int leafnum, i, j, k, dir[2][4] = {{1, 1, -1, -1}, {1, -1, -1, 1}};
 float a, step, dist, radius, windingdist;
 vec3_t vec, r, p, temp;
 winding_t winding;

 switch(light->type)
 {
  case 132:
  {







   if ( light->atten_disttype == LDAT_LINEAR )
    dist = light->photons * lightLinearScale;
   else
    dist = sqrt(light->photons);

   windingdist = MAX_WORLD_COORD;
   if (dist > windingdist)
    windingdist = dist;

   leafnum = VS_LightLeafnum(light->origin);
   leaf = &dleafs[leafnum];
   if (leaf->cluster == -1)
   {
    light->insolid = qtrue;
    break;
   }

   for (i = 0; i < 3; i++)
   {

    for (j = -1; j <= 1; j += 2)
    {
     memset(&volume, 0, sizeof(lightvolume_t));
     volume.numplanes = 0;
     for (k = 0; k < 4; k ++)
     {
      volume.points[volume.numplanes][i] = light->origin[i] + j * windingdist;
      volume.points[volume.numplanes][(i+1)%3] = light->origin[(i+1)%3] + dir[0][k] * windingdist;
      volume.points[volume.numplanes][(i+2)%3] = light->origin[(i+2)%3] + dir[1][k] * windingdist;
      volume.numplanes++;
     }
     if (j >= 0)
     {
      VectorCopy(volume.points[0], temp);
      VectorCopy(volume.points[2], volume.points[0]);
      VectorCopy(temp, volume.points[2]);
     }
     for (k = 0; k < volume.numplanes; k++)
     {
      VS_PlaneFromPoints(&volume.planes[k], light->origin, volume.points[(k+1)%volume.numplanes], volume.points[k]);
     }
     VectorCopy(light->origin, temp);
     temp[i] += (float) j * dist;
     VectorClear(volume.endplane.normal);
     volume.endplane.normal[i] = -j;
     volume.endplane.dist = DotProduct(volume.endplane.normal, temp);
     volume.farplane = volume.endplane;
     volume.cluster = leaf->cluster;
     volume.surfaceNum = -1;
     volume.type = VOLUME_NORMAL;

     memset(volume.facetTested, 0, sizeof(volume.facetTested));
     memset(volume.clusterTested, 0, sizeof(volume.clusterTested));
     VS_R_FloodLight(light, &volume, leaf->cluster, 0);
     if (volume.surfaceNum >= 0)
     {
      VS_R_CastLightAtSurface(light, &volume);
     }
    }
   }
   break;
  }
  case 131:
  {






   if ( light->atten_disttype == LDAT_LINEAR )
    dist = light->photons * lightLinearScale;
   else
    dist = sqrt(light->photons);
   dist *= 2;

   windingdist = 4096;
   if (dist > windingdist)
    windingdist = dist;

   radius = 8 * windingdist * light->radiusByDist;

   memset(&volume, 0, sizeof(lightvolume_t));
   leafnum = VS_LightLeafnum(light->origin);
   leaf = &dleafs[leafnum];
   if (leaf->cluster == -1)
   {
    light->insolid = qtrue;
    break;
   }

   VectorClear(vec);
   for (i = 0; i < 3; i++)
   {
    if (light->normal[i] > -0.9 && light->normal[i] < 0.9)
    {
     vec[i] = 1;
     break;
    }
   }
   CrossProduct(light->normal, vec, r);
   VectorScale(r, radius, p);
   volume.numplanes = 0;
   step = 45;
   for (a = step / 2; a < 360 + step / 2; a += step)
   {
    RotatePointAroundVector(volume.points[volume.numplanes], light->normal, p, a);
    VectorAdd(light->origin, volume.points[volume.numplanes], volume.points[volume.numplanes]);
    VectorMA(volume.points[volume.numplanes], windingdist, light->normal, volume.points[volume.numplanes]);
    volume.numplanes++;
   }
   for (i = 0; i < volume.numplanes; i++)
   {
    VS_PlaneFromPoints(&volume.planes[i], light->origin, volume.points[(i+1)%volume.numplanes], volume.points[i]);
   }
   VectorMA(light->origin, dist, light->normal, temp);
   VectorCopy(light->normal, volume.endplane.normal);
   VectorInverse(volume.endplane.normal);
   volume.endplane.dist = DotProduct(volume.endplane.normal, temp);
   volume.farplane = volume.endplane;
   volume.cluster = leaf->cluster;
   volume.surfaceNum = -1;
   volume.type = VOLUME_NORMAL;

   memset(volume.facetTested, 0, sizeof(volume.facetTested));
   memset(volume.clusterTested, 0, sizeof(volume.clusterTested));
   VS_R_FloodLight(light, &volume, leaf->cluster, 0);
   if (volume.surfaceNum >= 0)
   {
    VS_R_CastLightAtSurface(light, &volume);
   }
   break;
  }
  case 133:
  {
   float value;
   int n, axis;
   vec3_t v, vecs[2];

   if ( light->atten_disttype == LDAT_LINEAR )
    dist = light->photons * lightLinearScale;
   else
    dist = sqrt(light->photons);

   windingdist = 4096;
   if (dist > windingdist)
    windingdist = dist;

   VectorMA(light->origin, 0.1, light->normal, light->origin);

   leafnum = VS_LightLeafnum(light->origin);
   leaf = &dleafs[leafnum];
   if (leaf->cluster == -1)
   {
    light->insolid = qtrue;
    break;
   }
   value = 0;
   for (i = 0; i < 3; i++)
   {
    if (fabs(light->normal[i]) > value)
    {
     value = fabs(light->normal[i]);
     axis = i;
    }
   }
   for (i = 0; i < 2; i++)
   {
    VectorClear(v);
    v[(axis + 1 + i) % 3] = 1;
    CrossProduct(light->normal, v, vecs[i]);
   }

   for (i = -1; i <= 1; i += 2)
   {
    for (j = -1; j <= 1; j += 2)
    {
     for (n = 0; n < 2; n++)
     {
      memset(&volume, 0, sizeof(lightvolume_t));
      volume.numplanes = 3;
      VectorMA(light->origin, i * windingdist, vecs[0], volume.points[(i == j) == n]);
      VectorMA(light->origin, j * windingdist, vecs[1], volume.points[(i != j) == n]);
      VectorMA(light->origin, windingdist, light->normal, volume.points[2]);
      for (k = 0; k < volume.numplanes; k++)
      {
       VS_PlaneFromPoints(&volume.planes[k], light->origin, volume.points[(k+1)%volume.numplanes], volume.points[k]);
      }
      VS_PlaneFromPoints(&volume.endplane, volume.points[0], volume.points[1], volume.points[2]);
      VectorMA(light->origin, dist, light->normal, temp);
      volume.endplane.dist = DotProduct(volume.endplane.normal, temp);
      if (DotProduct(light->origin, volume.endplane.normal) - volume.endplane.dist > 0)
       break;
     }
     volume.farplane = volume.endplane;
     volume.cluster = leaf->cluster;
     volume.surfaceNum = -1;
     volume.type = VOLUME_NORMAL;

     memset(volume.facetTested, 0, sizeof(volume.facetTested));
     memset(volume.clusterTested, 0, sizeof(volume.clusterTested));

     VS_R_FloodLight(light, &volume, leaf->cluster, 0);
     if (volume.surfaceNum >= 0)
     {
      VS_R_CastLightAtSurface(light, &volume);
     }
    }
   }
   break;
  }
  case 130:
  {





   memcpy(&winding, &light->w, sizeof(winding_t));
   VS_R_SubdivideDirectedAreaLight(light, 0, &winding);
   break;
  }
  case 129:
  {



   memcpy(&winding, &light->w, sizeof(winding_t));
   VS_R_SubdivideRadialAreaLight(light, 0, &winding);
   break;
  }
  case 128:
  {



   memcpy(&winding, &light->w, sizeof(winding_t));
   VS_R_SubdivideAreaSpotLight(light, 0, &winding);
   break;
  }
 }
}
