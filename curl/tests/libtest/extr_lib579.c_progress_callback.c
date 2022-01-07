
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,int,int) ;
 int libtest_arg2 ;

__attribute__((used)) static int progress_callback(void *clientp, double dltotal, double dlnow,
                             double ultotal, double ulnow)
{
  static int prev_ultotal = -1;
  static int prev_ulnow = -1;
  (void)clientp;
  (void)dltotal;
  (void)dlnow;





  if((prev_ultotal != (int)ultotal) ||
     (prev_ulnow != (int)ulnow)) {

    FILE *moo = fopen(libtest_arg2, "ab");
    if(moo) {
      fprintf(moo, "Progress callback called with UL %d out of %d\n",
              (int)ulnow, (int)ultotal);
      fclose(moo);
    }
    prev_ulnow = (int) ulnow;
    prev_ultotal = (int) ultotal;
  }
  return 0;
}
