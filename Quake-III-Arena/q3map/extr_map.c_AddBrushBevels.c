
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int* vec3_t ;
struct TYPE_8__ {size_t planenum; void* bevel; int contents; TYPE_1__* winding; } ;
typedef TYPE_2__ side_t ;
struct TYPE_10__ {int numsides; float* maxs; float* mins; TYPE_2__* sides; } ;
struct TYPE_9__ {int* normal; } ;


 int CrossProduct (int*,int*,int*) ;
 float DotProduct (int ,int*) ;
 int Error (char*) ;
 void* FindFloatPlane (int*,float) ;
 int MAX_BUILD_SIDES ;
 scalar_t__ PlaneEqual (TYPE_4__*,int*,float) ;
 int SnapVector (int*) ;
 int VectorClear (int*) ;
 double VectorNormalize (int*,int*) ;
 int VectorSubtract (int ,int ,int*) ;
 TYPE_5__* buildBrush ;
 int c_boxbevels ;
 int c_edgebevels ;
 TYPE_4__* mapplanes ;
 int memset (TYPE_2__*,int ,int) ;
 void* qtrue ;

void AddBrushBevels( void ) {
 int axis, dir;
 int i, order;
 side_t sidetemp;
 side_t *s;
 vec3_t normal;
 float dist;




 order = 0;
 for (axis=0 ; axis <3 ; axis++)
 {
  for (dir=-1 ; dir <= 1 ; dir+=2, order++)
  {

   for ( i=0, s=buildBrush->sides ; i < buildBrush->numsides ; i++,s++ ) {
    if (mapplanes[s->planenum].normal[axis] == dir)
     break;
   }

   if (i == buildBrush->numsides )
   {
    if ( buildBrush->numsides == MAX_BUILD_SIDES ) {
     Error( "MAX_BUILD_SIDES" );
    }
    memset( s, 0, sizeof( *s ) );
    buildBrush->numsides++;
    VectorClear (normal);
    normal[axis] = dir;
    if (dir == 1)
     dist = buildBrush->maxs[axis];
    else
     dist = -buildBrush->mins[axis];
    s->planenum = FindFloatPlane (normal, dist);
    s->contents = buildBrush->sides[0].contents;
    s->bevel = qtrue;
    c_boxbevels++;
   }


   if (i != order)
   {
    sidetemp = buildBrush->sides[order];
    buildBrush->sides[order] = buildBrush->sides[i];
    buildBrush->sides[i] = sidetemp;
   }
  }
 }




 if ( buildBrush->numsides == 6 ) {
  return;
  } else {
   int j, k, l;
   float d;
   winding_t *w, *w2;
   side_t *s2;
   vec3_t vec, vec2;



   for (i=6 ; i<buildBrush->numsides ; i++)
   {
    s = buildBrush->sides + i;
    w = s->winding;
    if (!w)
     continue;
    for (j=0 ; j<w->numpoints ; j++)
    {
     k = (j+1)%w->numpoints;
     VectorSubtract (w->p[j], w->p[k], vec);
     if (VectorNormalize (vec, vec) < 0.5)
      continue;
     SnapVector (vec);
     for (k=0 ; k<3 ; k++)
      if ( vec[k] == -1 || vec[k] == 1)
       break;
     if (k != 3)
      continue;


     for (axis=0 ; axis <3 ; axis++)
     {
      for (dir=-1 ; dir <= 1 ; dir+=2)
      {

       VectorClear (vec2);
       vec2[axis] = dir;
       CrossProduct (vec, vec2, normal);
       if (VectorNormalize (normal, normal) < 0.5)
        continue;
       dist = DotProduct (w->p[j], normal);



       for (k=0 ; k < buildBrush->numsides ; k++)
       {

        if (PlaneEqual (&mapplanes[buildBrush->sides[k].planenum]
         , normal, dist) )
         break;

        w2 = buildBrush->sides[k].winding;
        if (!w2)
         continue;
        for (l=0 ; l<w2->numpoints ; l++)
        {
         d = DotProduct (w2->p[l], normal) - dist;
         if (d > 0.1)
          break;
        }
        if (l != w2->numpoints)
         break;
       }

       if (k != buildBrush->numsides)
        continue;

       if ( buildBrush->numsides == MAX_BUILD_SIDES ) {
        Error( "MAX_BUILD_SIDES" );
       }

       s2 = &buildBrush->sides[buildBrush->numsides];
       buildBrush->numsides++;
       memset( s2, 0, sizeof( *s2 ) );

       s2->planenum = FindFloatPlane (normal, dist);
       s2->contents = buildBrush->sides[0].contents;
       s2->bevel = qtrue;
       c_edgebevels++;
      }
     }
    }
   }
  }
}
