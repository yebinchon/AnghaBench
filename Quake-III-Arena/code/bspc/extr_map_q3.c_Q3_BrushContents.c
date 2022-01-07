
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int contents; int surf; } ;
typedef TYPE_1__ side_t ;
struct TYPE_5__ {int numsides; int contents; int brushnum; int entitynum; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;


 int CONTENTS_DONOTENTER ;
 int CONTENTS_FOG ;
 int CONTENTS_LADDER ;
 int CONTENTS_LAVA ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_STRUCTURAL ;
 int CONTENTS_WATER ;
 int Log_Print (char*,int ,int) ;
 int Log_Write (char*,...) ;
 int PrintContents (int) ;
 int SURF_HINT ;
 int SURF_SKIP ;

int Q3_BrushContents(mapbrush_t *b)
{
 int contents, i, mixed, hint;
 side_t *s;

 s = &b->original_sides[0];
 contents = s->contents;

 mixed = 0;
 hint = 0;
 for (i = 1; i < b->numsides; i++)
 {
  s = &b->original_sides[i];
  if (s->contents != contents) mixed = 1;
  if (s->surf & (SURF_HINT|SURF_SKIP)) hint = 1;
  contents |= s->contents;
 }

 if (hint)
 {
  if (contents)
  {
   Log_Write("WARNING: hint brush with contents: ");
   PrintContents(contents);
   Log_Write("\r\n");

   Log_Write("brush contents is: ");
   PrintContents(b->contents);
   Log_Write("\r\n");
  }
  return 0;
 }




 contents &= ~(CONTENTS_LADDER|CONTENTS_FOG);

 if (mixed)
 {
  Log_Write("Entity %i, Brush %i: mixed face contents "
   , b->entitynum, b->brushnum);
  PrintContents(contents);
  Log_Write("\r\n");

  Log_Write("brush contents is: ");
  PrintContents(b->contents);
  Log_Write("\r\n");

  if (contents & CONTENTS_DONOTENTER) return CONTENTS_DONOTENTER;







  if (contents & (CONTENTS_LAVA | CONTENTS_SLIME | CONTENTS_WATER))
  {
   return (contents & (CONTENTS_LAVA | CONTENTS_SLIME | CONTENTS_WATER));
  }
  if (contents & CONTENTS_PLAYERCLIP) return (contents & CONTENTS_PLAYERCLIP);
  return (contents & CONTENTS_SOLID);
 }






 if (contents == (contents & CONTENTS_STRUCTURAL))
 {

  contents = 0;
 }
 if (contents & CONTENTS_DONOTENTER)
 {
  Log_Print("brush %i is a donotenter brush, c = %X\n", b->brushnum, contents);
 }
 return contents;
}
