
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* link; int number; } ;
typedef TYPE_1__* Nonterm ;


 int print (char*,...) ;

__attribute__((used)) static void emitdefs(Nonterm nts, int ntnumber) {
 Nonterm p;

 for (p = nts; p; p = p->link)
  print("#define %P%S_NT %d\n", p, p->number);
 print("\n");
 print("static char *%Pntname[] = {\n%10,\n");
 for (p = nts; p; p = p->link)
  print("%1\"%S\",\n", p);
 print("%10\n};\n\n");
}
