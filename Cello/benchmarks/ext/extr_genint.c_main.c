
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int printf (char*,unsigned int) ;
 int rand () ;
 int srand (int) ;

int main(int argc, char *argv[])
{
 int i, n = 500000;
 if (argc > 1) n = atoi(argv[1]);
 srand(11);
 for (i = 0; i < n; ++i)
  printf("%u\n", (unsigned)((rand() % (n/4)) * 271828183u));
 return 0;
}
