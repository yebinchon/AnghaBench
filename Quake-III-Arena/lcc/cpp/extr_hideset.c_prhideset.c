
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; int len; } ;
typedef TYPE_1__** Hideset ;


 int fprintf (int ,char*,...) ;
 TYPE_1__*** hidesets ;
 int stderr ;

void
prhideset(int hs)
{
 Hideset np;

 for (np = hidesets[hs]; *np; np++) {
  fprintf(stderr, (char*)(*np)->name, (*np)->len);
  fprintf(stderr, " ");
 }
}
