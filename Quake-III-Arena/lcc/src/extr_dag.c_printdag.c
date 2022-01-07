
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Tree ;
struct TYPE_5__ {struct TYPE_5__* link; } ;
typedef TYPE_1__* Node ;
typedef int FILE ;


 TYPE_1__* forest ;
 int fprint (int *,char*,int ) ;
 int nodeid (int ) ;
 int printdag1 (TYPE_1__*,int,int ) ;
 scalar_t__* printed (int ) ;
 int * stderr ;
 int * stdout ;

void printdag(Node p, int fd) {
 FILE *f = fd == 1 ? stdout : stderr;

 printed(0);
 if (p == 0) {
  if ((p = forest) != ((void*)0))
   do {
    p = p->link;
    printdag1(p, fd, 0);
   } while (p != forest);
 } else if (*printed(nodeid((Tree)p)))
  fprint(f, "node'%d printed above\n", nodeid((Tree)p));
 else
  printdag1(p, fd, 0);
}
