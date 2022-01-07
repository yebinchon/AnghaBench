
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_ty ;


 scalar_t__ Seq_get (int ,int) ;
 int Seq_length (int ) ;
 int do_uid (int) ;
 int printf (char*) ;

__attribute__((used)) static void do_uid_list(list_ty x) {
 int i, count = Seq_length(x);

 if (count == 0)
  printf("<em>empty int list</em>\n");
 else {
  int i;
  printf("<em>int list</em>");
  for (i= 0; i < count; i++) {
   printf(" ");
   do_uid(*(int *)Seq_get(x, i));
  }
 }
}
