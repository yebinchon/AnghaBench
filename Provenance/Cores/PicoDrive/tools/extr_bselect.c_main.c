
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int* active ;
 int activec ;
 int fclose (int *) ;
 int fill_max () ;
 int * fopen (char*,char*) ;
 int fread (int ,int,int,int *) ;
 int malloc (int) ;
 int * ptr ;
 int ptrc ;
 int search_active () ;
 int select_max () ;
 int srandom (int ) ;
 int time (int *) ;

int
main(int argc, char *argv[])
{
 int i, u, b, c;
 FILE *f;


 srandom(time(((void*)0)));

 ptrc = argc - 1;





 for (i = 0; i < ptrc; i++)
 {
  ptr[i] = malloc(0x800);
  f = fopen(argv[i + 1], "rb");
  fread(ptr[i], 1, 0x800, f);
  fclose(f);
  active[i] = i;
 }
 activec = ptrc;

 while (activec > 0)
 {
  fill_max();
  select_max();
  search_active();
 }

 return 0;
}
