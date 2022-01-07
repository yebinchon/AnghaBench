
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* link; void* x; } ;
typedef TYPE_1__* List ;


 TYPE_1__* freenodes ;
 scalar_t__ length (TYPE_1__*) ;
 void** newarray (scalar_t__,int,unsigned int) ;

void *ltov(List *list, unsigned arena) {
 int i = 0;
 void **array = newarray(length(*list) + 1, sizeof array[0], arena);

 if (*list) {
  List lp = *list;
  do {
   lp = lp->link;
   array[i++] = lp->x;
  } while (lp != *list);

  lp = (*list)->link;
  (*list)->link = freenodes;
  freenodes = lp;

 }
 *list = ((void*)0);
 array[i] = ((void*)0);
 return array;
}
