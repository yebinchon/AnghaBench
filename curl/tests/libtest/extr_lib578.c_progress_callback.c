
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t data_size ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 int libtest_arg2 ;

__attribute__((used)) static int progress_callback(void *clientp, double dltotal, double dlnow,
                             double ultotal, double ulnow)
{
  FILE *moo = fopen(libtest_arg2, "wb");

  (void)clientp;
  (void)dltotal;
  (void)dlnow;

  if(moo) {
    if((size_t)ultotal == data_size && (size_t)ulnow == data_size)
      fprintf(moo, "PASSED, UL data matched data size\n");
    else
      fprintf(moo, "Progress callback called with UL %f out of %f\n",
              ulnow, ultotal);
    fclose(moo);
  }
  return 0;
}
