
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {struct TYPE_21__* next; } ;
typedef TYPE_1__ bspbrush_t ;


 TYPE_1__* AddBrushListToTail (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ BrushGE (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ BrushesDisjoint (TYPE_1__*,TYPE_1__*) ;
 int CountBrushList (TYPE_1__*) ;
 TYPE_1__* CullList (TYPE_1__*,TYPE_1__*) ;
 int FreeBrushList (TYPE_1__*) ;
 int Log_Print (char*,...) ;
 int Log_Write (char*,int) ;
 TYPE_1__* SubtractBrush (TYPE_1__*,TYPE_1__*) ;
 int WriteBrushList (char*,TYPE_1__*,int) ;
 int WriteBrushMap (char*,TYPE_1__*) ;
 scalar_t__ cancelconversion ;
 int qprintf (char*,...) ;
 scalar_t__ startbrush ;

bspbrush_t *ChopBrushes (bspbrush_t *head)
{
 bspbrush_t *b1, *b2, *next;
 bspbrush_t *tail;
 bspbrush_t *keep;
 bspbrush_t *sub, *sub2;
 int c1, c2;
 int num_csg_iterations;

 Log_Print("-------- Brush CSG ---------\n");
 Log_Print("%6d original brushes\n", CountBrushList (head));

 num_csg_iterations = 0;
 qprintf("%6d output brushes", num_csg_iterations);





 keep = ((void*)0);

newlist:

 if (!head) return ((void*)0);

 for (tail = head; tail->next; tail = tail->next)
  ;

 for (b1=head ; b1 ; b1=next)
 {
  next = b1->next;


  if (cancelconversion)
  {
   b1->next = keep;
   keep = b1;
   continue;
  }

  for (b2 = b1->next; b2; b2 = b2->next)
  {
   if (BrushesDisjoint (b1, b2))
    continue;

   sub = ((void*)0);
   sub2 = ((void*)0);
   c1 = 999999;
   c2 = 999999;

   if (BrushGE (b2, b1))
   {
    sub = SubtractBrush (b1, b2);
    if (sub == b1)
    {
     continue;
    }
    if (!sub)
    {
     head = CullList (b1, b1);
     goto newlist;
    }
    c1 = CountBrushList (sub);
   }

   if ( BrushGE (b1, b2) )
   {
    sub2 = SubtractBrush (b2, b1);
    if (sub2 == b2)
     continue;
    if (!sub2)
    {
     FreeBrushList (sub);
     head = CullList (b1, b2);
     goto newlist;
    }
    c2 = CountBrushList (sub2);
   }

   if (!sub && !sub2)
    continue;



   if (c1 > 1 && c2 > 1)
   {
    if (sub2)
     FreeBrushList (sub2);
    if (sub)
     FreeBrushList (sub);
    continue;
   }

   if (c1 < c2)
   {
    if (sub2) FreeBrushList (sub2);
    tail = AddBrushListToTail (sub, tail);
    head = CullList (b1, b1);
    goto newlist;
   }
   else
   {
    if (sub) FreeBrushList (sub);
    tail = AddBrushListToTail (sub2, tail);
    head = CullList (b1, b2);
    goto newlist;
   }
  }

  if (!b2)
  {
   b1->next = keep;
   keep = b1;
  }
  num_csg_iterations++;
  qprintf("\r%6d", num_csg_iterations);
 }

 if (cancelconversion) return keep;

 qprintf("\n");
 Log_Write("%6d output brushes\r\n", num_csg_iterations);
 return keep;
}
