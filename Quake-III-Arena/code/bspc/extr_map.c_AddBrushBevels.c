
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int* vec3_t ;
typedef int textureref_t ;
struct TYPE_9__ {size_t planenum; int flags; int contents; int lightinfo; int texinfo; TYPE_1__* winding; } ;
typedef TYPE_2__ side_t ;
struct TYPE_10__ {int numsides; float* maxs; float* mins; TYPE_2__* original_sides; } ;
typedef TYPE_3__ mapbrush_t ;
typedef int brush_texture_t ;
struct TYPE_11__ {int* normal; } ;


 int CrossProduct (int*,int*,int*) ;
 float DotProduct (int ,int*) ;
 int Error (char*) ;
 void* FindFloatPlane (int*,float) ;
 scalar_t__ MAX_MAP_BRUSHSIDES ;
 scalar_t__ PlaneEqual (TYPE_4__*,int*,float) ;
 int SFL_BEVEL ;
 int SnapVector (int*) ;
 int VectorClear (int*) ;
 double VectorNormalize (int*) ;
 int VectorSubtract (int ,int ,int*) ;
 TYPE_2__* brushsides ;
 int c_boxbevels ;
 int c_edgebevels ;
 TYPE_4__* mapplanes ;
 scalar_t__ nummapbrushsides ;
 int * side_brushtextures ;
 int * side_newrefs ;

void AddBrushBevels (mapbrush_t *b)
{
 int axis, dir;
 int i, j, k, l, order;
 side_t sidetemp;
 brush_texture_t tdtemp;



 side_t *s, *s2;
 vec3_t normal;
 float dist;
 winding_t *w, *w2;
 vec3_t vec, vec2;
 float d;




 order = 0;
 for (axis=0 ; axis <3 ; axis++)
 {
  for (dir=-1 ; dir <= 1 ; dir+=2, order++)
  {

   for (i=0, s=b->original_sides ; i<b->numsides ; i++,s++)
   {
    if (mapplanes[s->planenum].normal[axis] == dir)
     break;
   }

   if (i == b->numsides)
   {
    if (nummapbrushsides == MAX_MAP_BRUSHSIDES)
     Error ("MAX_MAP_BRUSHSIDES");
    nummapbrushsides++;
    b->numsides++;
    VectorClear (normal);
    normal[axis] = dir;
    if (dir == 1)
     dist = b->maxs[axis];
    else
     dist = -b->mins[axis];
    s->planenum = FindFloatPlane (normal, dist);
    s->texinfo = b->original_sides[0].texinfo;



    s->contents = b->original_sides[0].contents;
    s->flags |= SFL_BEVEL;
    c_boxbevels++;
   }


   if (i != order)
   {
    sidetemp = b->original_sides[order];
    b->original_sides[order] = b->original_sides[i];
    b->original_sides[i] = sidetemp;

    j = b->original_sides - brushsides;
    tdtemp = side_brushtextures[j+order];
    side_brushtextures[j+order] = side_brushtextures[j+i];
    side_brushtextures[j+i] = tdtemp;






   }
  }
 }




 if (b->numsides == 6)
  return;


 for (i=6 ; i<b->numsides ; i++)
 {
  s = b->original_sides + i;
  w = s->winding;
  if (!w)
   continue;
  for (j=0 ; j<w->numpoints ; j++)
  {
   k = (j+1)%w->numpoints;
   VectorSubtract (w->p[j], w->p[k], vec);
   if (VectorNormalize (vec) < 0.5)
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
     if (VectorNormalize (normal) < 0.5)
      continue;
     dist = DotProduct (w->p[j], normal);



     for (k=0 ; k<b->numsides ; k++)
     {

      if (PlaneEqual (&mapplanes[b->original_sides[k].planenum]
       , normal, dist) )
       break;

      w2 = b->original_sides[k].winding;
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

     if (k != b->numsides)
      continue;

     if (nummapbrushsides == MAX_MAP_BRUSHSIDES)
      Error ("MAX_MAP_BRUSHSIDES");
     nummapbrushsides++;
     s2 = &b->original_sides[b->numsides];
     s2->planenum = FindFloatPlane (normal, dist);
     s2->texinfo = b->original_sides[0].texinfo;



     s2->contents = b->original_sides[0].contents;
     s2->flags |= SFL_BEVEL;
     c_edgebevels++;
     b->numsides++;
    }
   }
  }
 }
}
