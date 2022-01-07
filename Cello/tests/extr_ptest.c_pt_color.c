
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** colors ;
 int printf (char*,char*) ;

__attribute__((used)) static void pt_color(int color) {
  printf("%s", colors[color]);
}
