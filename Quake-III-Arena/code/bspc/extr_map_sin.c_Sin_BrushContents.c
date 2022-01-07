
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int contents; size_t texinfo; } ;
typedef TYPE_1__ side_t ;
struct TYPE_7__ {int numsides; int entitynum; int brushnum; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;
struct TYPE_9__ {int translucence; } ;
struct TYPE_8__ {int flags; } ;


 int CONTENTS_DETAIL ;
 int CONTENTS_DUMMYFENCE ;
 int CONTENTS_FENCE ;
 int CONTENTS_Q2TRANSLUCENT ;
 int CONTENTS_SOLID ;
 int CONTENTS_WINDOW ;
 int SURF_TRANS33 ;
 int SURF_TRANS66 ;
 int printf (char*,int,int) ;
 TYPE_4__* sin_texinfo ;
 TYPE_3__* texinfo ;

int Sin_BrushContents(mapbrush_t *b)
{
 int contents;
 side_t *s;
 int i;



 int trans;


 s = &b->original_sides[0];
 contents = s->contents;




 trans = texinfo[s->texinfo].flags;

 for (i=1 ; i<b->numsides ; i++, s++)
 {
  s = &b->original_sides[i];



  trans |= texinfo[s->texinfo].flags;

  if (s->contents != contents)
  {
   printf ("Entity %i, Brush %i: mixed face contents\n"
    , b->entitynum, b->brushnum);
   break;
  }
 }
 if ( trans & (SURF_TRANS33|SURF_TRANS66) )

 {
  contents |= CONTENTS_Q2TRANSLUCENT;
  if (contents & CONTENTS_SOLID)
  {
   contents &= ~CONTENTS_SOLID;
   contents |= CONTENTS_WINDOW;
  }
 }

 return contents;
}
