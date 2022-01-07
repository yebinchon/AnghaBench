
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char) ;

__attribute__((used)) static void do_suffix(int x) {
 static char suffixes[] = "0F234IUPVB";

 if (x < 0 || x >= (sizeof suffixes/sizeof suffixes[0]) - 1)
  printf("%d", x);
 else
  printf("%c", suffixes[x]);
}
