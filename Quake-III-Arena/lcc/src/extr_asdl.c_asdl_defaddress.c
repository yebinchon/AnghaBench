
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int label; } ;
struct TYPE_7__ {TYPE_1__ l; } ;
struct TYPE_8__ {scalar_t__ scope; TYPE_2__ u; } ;
typedef TYPE_3__* Symbol ;


 scalar_t__ LABELS ;
 int put (int ) ;
 int rcc_Defaddress (int ) ;
 int rcc_Deflabel (int ) ;
 int symboluid (TYPE_3__*) ;

__attribute__((used)) static void asdl_defaddress(Symbol p) {
 if (p->scope == LABELS)
  put(rcc_Deflabel(p->u.l.label));
 else
  put(rcc_Defaddress(symboluid(p)));
}
