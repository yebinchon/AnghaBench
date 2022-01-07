
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* rcc_item_ty ;
struct TYPE_3__ {int uid; int kind; } ;


 int Symbol ;
 int Type ;
 int assert (int ) ;
 int caselabel (int ) ;
 int printf (char*,...) ;
 int symbol ;
 int type ;
 int yy (int ,int ,int ) ;

__attribute__((used)) static void do_item(rcc_item_ty x) {
 printf("<a name='%d'>", x->uid);

 printf("</a>");
 switch (x->kind) {
 static char *typename = "item";
 caselabel(Symbol);
  yy(Symbol,symbol,symbol);
  break;
 caselabel(Type);
  yy(Type,type,type);
  break;
 default: assert(0);
 }

 printf("</ul>\n");
}
