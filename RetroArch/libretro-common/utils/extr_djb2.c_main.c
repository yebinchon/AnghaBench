
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int djb2 (char const*) ;
 int printf (char*,int,char const*) ;

int main(int argc, const char* argv[])
{
   int i;

   for (i = 1; i < argc; i++)
      printf( "0x%08xU: %s\n", djb2( argv[ i ] ), argv[ i ] );

   return 0;
}
