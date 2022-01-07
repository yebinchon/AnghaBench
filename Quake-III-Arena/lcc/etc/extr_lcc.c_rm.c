
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; struct TYPE_3__* link; } ;
typedef TYPE_1__* List ;


 int fprintf (int ,char*,...) ;
 int remove (char*) ;
 int stderr ;
 int verbose ;

__attribute__((used)) static void rm(List list) {
 if (list) {
  List b = list;
  if (verbose)
   fprintf(stderr, "rm");
  do {
   if (verbose)
    fprintf(stderr, " %s", b->str);
   if (verbose < 2)
    remove(b->str);
  } while ((b = b->link) != list);
  if (verbose)
   fprintf(stderr, "\n");
 }
}
