
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* link; } ;
typedef TYPE_1__* List ;



int length(List list) {
 int n = 0;

 if (list) {
  List lp = list;
  do
   n++;
  while ((lp = lp->link) != list);
 }
 return n;
}
