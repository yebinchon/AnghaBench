
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scope; } ;
typedef TYPE_1__* Symbol ;


 scalar_t__ GLOBAL ;
 int symboluid (TYPE_1__*) ;

__attribute__((used)) static void asdl_defsymbol(Symbol p) {
 if (p->scope >= GLOBAL)
  symboluid(p);
}
