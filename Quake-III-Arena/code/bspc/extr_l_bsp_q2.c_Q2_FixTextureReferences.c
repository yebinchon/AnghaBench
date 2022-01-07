
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_11__ {int planenum; int texinfo; } ;
typedef TYPE_1__ dface_t ;
struct TYPE_12__ {int planenum; int texinfo; } ;
typedef TYPE_2__ dbrushside_t ;
struct TYPE_13__ {int numsides; int firstside; } ;
typedef TYPE_3__ dbrush_t ;


 int FreeWinding (int *) ;
 int MAX_MAP_BRUSHSIDES ;
 int * Q2_BrushSideWinding (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ Q2_FaceOnWinding (TYPE_1__*,int *) ;
 scalar_t__ Q2_HintSkipBrush (TYPE_3__*) ;
 int WE_NOTENOUGHPOINTS ;
 int WE_POINTBOGUSRANGE ;
 int WE_SMALLAREA ;
 int WindingArea (int *) ;
 int WindingError (int *) ;
 scalar_t__ WindingIsTiny (int *) ;
 int* brushsidetextured ;
 TYPE_3__* dbrushes ;
 TYPE_2__* dbrushsides ;
 TYPE_1__* dfaces ;
 int memset (int*,int,int ) ;
 int numbrushes ;
 int numfaces ;

void Q2_FixTextureReferences(void)
{
 int i, j, k, we;
 dbrushside_t *brushside;
 dbrush_t *brush;
 dface_t *face;
 winding_t *w;

 memset(brushsidetextured, 0, MAX_MAP_BRUSHSIDES);

   for (i = 0; i < numbrushes; i++)
   {
  brush = &dbrushes[i];

  if (Q2_HintSkipBrush(brush)) continue;

  for (j = 0; j < brush->numsides; j++)
  {
   brushside = &dbrushsides[brush->firstside + j];

   w = Q2_BrushSideWinding(brush, brushside);
   if (!w)
   {
    brushsidetextured[brush->firstside + j] = 1;
    continue;
   }
   else
   {

    if (WindingIsTiny(w))
    {
     FreeWinding(w);
     brushsidetextured[brush->firstside + j] = 1;
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
      brushsidetextured[brush->firstside + j] = 1;
      continue;
     }
    }
   }
   if (WindingArea(w) < 20)
   {
    brushsidetextured[brush->firstside + j] = 1;
   }

   for (k = 0; k < numfaces; k++)
   {
    face = &dfaces[k];

    if ((face->planenum&~1) != (brushside->planenum&~1)) continue;

    if (Q2_FaceOnWinding(face, w))
    {
     brushside->texinfo = face->texinfo;
     brushsidetextured[brush->firstside + j] = 1;
     break;
    }
   }
   FreeWinding(w);
  }
 }
}
