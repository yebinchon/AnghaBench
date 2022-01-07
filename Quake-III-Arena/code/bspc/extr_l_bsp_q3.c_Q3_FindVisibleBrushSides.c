
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_13__ {scalar_t__ surfaceType; } ;
typedef TYPE_1__ q3_dsurface_t ;
struct TYPE_14__ {int dist; int normal; } ;
typedef TYPE_2__ q3_dplane_t ;
struct TYPE_15__ {size_t planeNum; } ;
typedef TYPE_3__ q3_dbrushside_t ;
struct TYPE_16__ {int numSides; int firstSide; } ;
typedef TYPE_4__ q3_dbrush_t ;
struct TYPE_17__ {int dist; int normal; } ;


 float DotProduct (int ,int ) ;
 int FreeWinding (int *) ;
 int Log_Print (char*,...) ;
 scalar_t__ MST_PLANAR ;
 int * Q3_BrushSideWinding (TYPE_4__*,TYPE_3__*) ;
 int Q3_CreatePlanarSurfacePlanes () ;
 scalar_t__ Q3_FaceOnWinding (TYPE_1__*,int *) ;
 int Q3_MAX_MAP_BRUSHSIDES ;
 int WE_NOTENOUGHPOINTS ;
 int WE_POINTBOGUSRANGE ;
 int WE_SMALLAREA ;
 int WindingArea (int *) ;
 int WindingError (int *) ;
 scalar_t__ WindingIsTiny (int *) ;
 int fabs (int) ;
 scalar_t__ forcesidesvisible ;
 int memset (int*,int,int ) ;
 TYPE_4__* q3_dbrushes ;
 TYPE_3__* q3_dbrushsides ;
 int* q3_dbrushsidetextured ;
 TYPE_7__* q3_dplanes ;
 TYPE_1__* q3_drawSurfaces ;
 int q3_numDrawSurfaces ;
 int q3_numbrushes ;
 int q3_numbrushsides ;
 TYPE_2__* q3_surfaceplanes ;
 int qprintf (char*,int) ;

void Q3_FindVisibleBrushSides(void)
{
 int i, j, k, we, numtextured, numsides;
 float dot;
 q3_dplane_t *plane;
 q3_dbrushside_t *brushside;
 q3_dbrush_t *brush;
 q3_dsurface_t *surface;
 winding_t *w;

 memset(q3_dbrushsidetextured, 0, Q3_MAX_MAP_BRUSHSIDES);

 numsides = 0;

 Q3_CreatePlanarSurfacePlanes();
 Log_Print("searching visible brush sides...\n");
 Log_Print("%6d brush sides", numsides);

 for (i = 0; i < q3_numbrushes; i++)
 {
  brush = &q3_dbrushes[i];

  for (j = 0; j < brush->numSides; j++)
  {
   qprintf("\r%6d", numsides++);
   brushside = &q3_dbrushsides[brush->firstSide + j];

   w = Q3_BrushSideWinding(brush, brushside);
   if (!w)
   {
    q3_dbrushsidetextured[brush->firstSide + j] = 1;
    continue;
   }
   else
   {

    if (WindingIsTiny(w))
    {
     FreeWinding(w);
     q3_dbrushsidetextured[brush->firstSide + j] = 1;
     continue;
    }
    else
    {
     we = WindingError(w);
     if (we == WE_NOTENOUGHPOINTS
      || we == WE_SMALLAREA
      || we == WE_POINTBOGUSRANGE

      )
     {
      FreeWinding(w);
      q3_dbrushsidetextured[brush->firstSide + j] = 1;
      continue;
     }
    }
   }
   if (WindingArea(w) < 20)
   {
    q3_dbrushsidetextured[brush->firstSide + j] = 1;
    continue;
   }

   for (k = 0; k < q3_numDrawSurfaces; k++)
   {
    surface = &q3_drawSurfaces[k];
    if (surface->surfaceType != MST_PLANAR) continue;


    plane = &q3_surfaceplanes[k];

    if (fabs(fabs(plane->dist) - fabs(q3_dplanes[brushside->planeNum].dist)) > 5) continue;
    dot = DotProduct(plane->normal, q3_dplanes[brushside->planeNum].normal);
    if (dot > -0.9 && dot < 0.9) continue;

    if (Q3_FaceOnWinding(surface, w))
    {
     q3_dbrushsidetextured[brush->firstSide + j] = 1;

     break;
    }
   }
   FreeWinding(w);
  }
 }
 qprintf("\r%6d brush sides\n", numsides);
 numtextured = 0;
 for (i = 0; i < q3_numbrushsides; i++)
 {
  if (forcesidesvisible) q3_dbrushsidetextured[i] = 1;
  if (q3_dbrushsidetextured[i]) numtextured++;
 }
 Log_Print("%d brush sides textured out of %d\n", numtextured, q3_numbrushsides);
}
