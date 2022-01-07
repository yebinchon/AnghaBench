
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_11__ {int planenum; int texinfo; } ;
typedef TYPE_1__ sin_dface_t ;
struct TYPE_12__ {int planenum; int texinfo; } ;
typedef TYPE_2__ sin_dbrushside_t ;
struct TYPE_13__ {int numsides; int firstside; } ;
typedef TYPE_3__ sin_dbrush_t ;


 int FreeWinding (int *) ;
 int SIN_MAX_MAP_BRUSHSIDES ;
 int * Sin_BrushSideWinding (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ Sin_FaceOnWinding (TYPE_1__*,int *) ;
 scalar_t__ Sin_HintSkipBrush (TYPE_3__*) ;
 int WE_NOTENOUGHPOINTS ;
 int WE_POINTBOGUSRANGE ;
 int WE_SMALLAREA ;
 int WindingArea (int *) ;
 int WindingError (int *) ;
 scalar_t__ WindingIsTiny (int *) ;
 int memset (int*,int,int ) ;
 TYPE_3__* sin_dbrushes ;
 TYPE_2__* sin_dbrushsides ;
 int* sin_dbrushsidetextured ;
 TYPE_1__* sin_dfaces ;
 int sin_numbrushes ;
 int sin_numfaces ;

void Sin_FixTextureReferences(void)
{
 int i, j, k, we;
 sin_dbrushside_t *brushside;
 sin_dbrush_t *brush;
 sin_dface_t *face;
 winding_t *w;

 memset(sin_dbrushsidetextured, 0, SIN_MAX_MAP_BRUSHSIDES);

   for (i = 0; i < sin_numbrushes; i++)
   {
  brush = &sin_dbrushes[i];

  if (Sin_HintSkipBrush(brush)) continue;

  for (j = 0; j < brush->numsides; j++)
  {
   brushside = &sin_dbrushsides[brush->firstside + j];

   w = Sin_BrushSideWinding(brush, brushside);
   if (!w)
   {
    sin_dbrushsidetextured[brush->firstside + j] = 1;
    continue;
   }
   else
   {

    if (WindingIsTiny(w))
    {
     FreeWinding(w);
     sin_dbrushsidetextured[brush->firstside + j] = 1;
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
      sin_dbrushsidetextured[brush->firstside + j] = 1;
      continue;
     }
    }
   }
   if (WindingArea(w) < 20)
   {
    sin_dbrushsidetextured[brush->firstside + j] = 1;
   }

   for (k = 0; k < sin_numfaces; k++)
   {
    face = &sin_dfaces[k];

    if ((face->planenum&~1) != (brushside->planenum&~1)) continue;

    if (Sin_FaceOnWinding(face, w))
    {
     brushside->texinfo = face->texinfo;
     sin_dbrushsidetextured[brush->firstside + j] = 1;
     break;
    }
   }
   FreeWinding(w);
  }
 }
}
