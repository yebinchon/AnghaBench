
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f () ;
 int g (int ) ;
 int printf (char*,...) ;
 int wordlist ;
 int** y ;

main()
{
 int i, j;

 for (i = 0; y[i]; i++) {
  for (j = 0; y[i][j]; j++)
   printf(" %d", y[i][j]);
  printf("\n");
 }
 f();
 g(wordlist);
 return 0;
}
