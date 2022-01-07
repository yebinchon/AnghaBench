
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nuids; int nlabels; int items; int interfaces; } ;


 int Seq_length (int ) ;
 int assert (scalar_t__) ;
 int checkuid (int ) ;
 int dopending (int *) ;
 int fprintf (int ,char*,int,int) ;
 int genlabel (int ) ;
 TYPE_1__* pickle ;
 int rcc_write_program (TYPE_1__*,int ) ;
 int rcsid ;
 int stderr ;
 int stdout ;
 scalar_t__ strstr (int ,char*) ;
 int strtod (scalar_t__,int *) ;
 int write_int (int,int ) ;

__attribute__((used)) static void asdl_progend(void) {
 dopending(((void*)0));
 {
  int n = checkuid(pickle->interfaces) + Seq_length(pickle->items);
  if (n != pickle->nuids - 1)
   fprintf(stderr, "?bogus uid count: have %d should have %d\n",
    n, pickle->nuids-1);
 }
 pickle->nlabels = genlabel(0);
 write_int((int)(100*(assert(strstr(rcsid, ",v")), strtod(strstr(rcsid, ",v")+2, ((void*)0)))
), stdout);
 rcc_write_program(pickle, stdout);
}
