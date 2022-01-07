
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

f() {
 static char *keywords[] = {"if", "for", "else", "while", 0, };
 char **p;

 for (p = keywords; *p; p++)
  printf("%s\n", *p);
}
