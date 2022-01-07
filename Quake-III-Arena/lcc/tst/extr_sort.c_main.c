
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * in ;
 int putchar (char) ;
 int putd (int ) ;
 int sort (int *,int) ;

main() {
 int i;

 sort(in, (sizeof in)/(sizeof in[0]));
 for (i = 0; i < (sizeof in)/(sizeof in[0]); i++) {
  putd(in[i]);
  putchar('\n');
 }
 return 0;
}
