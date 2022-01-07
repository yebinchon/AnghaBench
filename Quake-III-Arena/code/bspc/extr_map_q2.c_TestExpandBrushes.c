
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__** p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
struct TYPE_10__ {size_t planenum; size_t texinfo; } ;
typedef TYPE_2__ side_t ;
struct TYPE_11__ {int numsides; TYPE_2__* original_sides; } ;
typedef TYPE_3__ mapbrush_t ;
struct TYPE_13__ {int* normal; int dist; } ;
struct TYPE_12__ {char* texture; } ;
typedef int FILE ;


 TYPE_1__* BaseWindingForPlane (int*,int ) ;
 int Error (char*,...) ;
 int FreeWinding (TYPE_1__*) ;
 int Log_Print (char*,char*) ;
 scalar_t__ fabs (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_3__* mapbrushes ;
 TYPE_5__* mapplanes ;
 int nummapbrushes ;
 TYPE_4__* texinfo ;

void TestExpandBrushes (void)
{
 FILE *f;
 side_t *s;
 int i, j, bn;
 winding_t *w;
 char *name = "expanded.map";
 mapbrush_t *brush;
 vec_t dist;

 Log_Print("writing %s\n", name);
 f = fopen (name, "wb");
 if (!f)
  Error ("Can't write %s\n", name);

 fprintf (f, "{\n\"classname\" \"worldspawn\"\n");

 for (bn=0 ; bn<nummapbrushes ; bn++)
 {
  brush = &mapbrushes[bn];
  fprintf (f, "{\n");
  for (i=0 ; i<brush->numsides ; i++)
  {
   s = brush->original_sides + i;
   dist = mapplanes[s->planenum].dist;
   for (j=0 ; j<3 ; j++)
    dist += fabs( 16 * mapplanes[s->planenum].normal[j] );

   w = BaseWindingForPlane (mapplanes[s->planenum].normal, dist);

   fprintf (f,"( %i %i %i ) ", (int)w->p[0][0], (int)w->p[0][1], (int)w->p[0][2]);
   fprintf (f,"( %i %i %i ) ", (int)w->p[1][0], (int)w->p[1][1], (int)w->p[1][2]);
   fprintf (f,"( %i %i %i ) ", (int)w->p[2][0], (int)w->p[2][1], (int)w->p[2][2]);

   fprintf (f, "%s 0 0 0 1 1\n", texinfo[s->texinfo].texture);
   FreeWinding (w);
  }
  fprintf (f, "}\n");
 }
 fprintf (f, "}\n");

 fclose (f);

 Error ("can't proceed after expanding brushes");
}
