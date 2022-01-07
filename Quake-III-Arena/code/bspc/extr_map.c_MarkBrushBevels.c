
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; size_t planenum; int winding; } ;
typedef TYPE_1__ side_t ;
struct TYPE_6__ {int numsides; int brushnum; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;
struct TYPE_7__ {int type; } ;


 int Log_Write (char*,int ,...) ;
 int SFL_BEVEL ;
 int SFL_VISIBLE ;
 int WE_NOTENOUGHPOINTS ;
 int WE_POINTBOGUSRANGE ;
 int WE_SMALLAREA ;
 int WindingError (int ) ;
 int WindingErrorString () ;
 scalar_t__ WindingIsTiny (int ) ;
 int c_boxbevels ;
 int c_edgebevels ;
 TYPE_3__* mapplanes ;
 size_t nummapplanes ;

void MarkBrushBevels(mapbrush_t *brush)
{
 int i;
 int we;
 side_t *s;


 for (i = 0; i < brush->numsides; i++)
 {
  s = brush->original_sides + i;

  if (!s->winding)
  {
   Log_Write("MarkBrushBevels: brush %d no winding", brush->brushnum);
   s->flags |= SFL_BEVEL;
  }

  else if (WindingIsTiny(s->winding))
  {
   s->flags |= SFL_BEVEL;
   Log_Write("MarkBrushBevels: brush %d tiny winding", brush->brushnum);
  }

  else
  {
   we = WindingError(s->winding);
   if (we == WE_NOTENOUGHPOINTS
     || we == WE_SMALLAREA
     || we == WE_POINTBOGUSRANGE

     )
   {
    Log_Write("MarkBrushBevels: brush %d %s", brush->brushnum, WindingErrorString());
    s->flags |= SFL_BEVEL;
   }
  }
  if (s->flags & SFL_BEVEL)
  {
   s->flags &= ~SFL_VISIBLE;

   if (s->planenum > 0 && s->planenum < nummapplanes)
   {

    if (mapplanes[s->planenum].type < 3) c_boxbevels++;
    else c_edgebevels++;
   }
  }
 }
}
