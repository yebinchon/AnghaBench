
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_ty ;


 void* Seq_get (int ,int) ;
 int Seq_length (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void do_list(list_ty x, void do_one(void *), char *type, char *listhtml, char *separator) {
 int count = Seq_length(x);

 if (count == 0)
  printf("<em>empty %s list</em>\n", type);
 else {
  int i;
  printf("<em>%s list</em>", type);
  if (listhtml != ((void*)0))
   printf("<%s>\n", listhtml);
  for (i = 0; i < count; i++) {
   if (listhtml != ((void*)0))
    printf("<li>");
   printf(separator);
   do_one(Seq_get(x, i));
   if (listhtml != ((void*)0))
    printf("</li>\n");
  }
  if (listhtml != ((void*)0))
   printf("</%s>\n", listhtml);
 }
}
