
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sdaux_t ;


 scalar_t__ fgets (char*,int,int ) ;
 int free (int *) ;
 int * sd_genmat () ;
 int sd_solve (int *,char*) ;
 int stdin ;
 int strlen (char*) ;

int main()
{
 sdaux_t *a = sd_genmat();
 char buf[1024];
 while (fgets(buf, 1024, stdin) != 0) {
  if (strlen(buf) < 81) continue;
  sd_solve(a, buf);

 }
 free(a);
 return 0;
}
