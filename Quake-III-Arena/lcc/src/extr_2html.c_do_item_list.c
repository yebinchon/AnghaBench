
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rcc_item_ty ;
typedef int list_ty ;
struct TYPE_4__ {int uid; } ;


 TYPE_1__* Seq_get (int ,int) ;
 int Seq_length (int ) ;
 int do_item (TYPE_1__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void do_item_list(list_ty x) {
 int count = Seq_length(x);

 if (count == 0)
  printf("<em>empty item list</em>\n");
 else {
  int i;
  printf("<em>item list</em>");
  printf("<ol>\n");
  for (i = 0; i < count; i++) {
   rcc_item_ty item = Seq_get(x, i);
   printf("<li value=%d>", item->uid);
   do_item(item);
   printf("</li>\n");
  }
  printf("</ol>\n");
 }
}
