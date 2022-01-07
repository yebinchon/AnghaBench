
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_4__ {int winding; } ;


 int _printf (char*,...) ;
 int pw (int ) ;

void PrintBrush (bspbrush_t *brush)
{
 int i;

 _printf ("brush: %p\n", brush);
 for (i=0;i<brush->numsides ; i++)
 {
  pw(brush->sides[i].winding);
  _printf ("\n");
 }
}
