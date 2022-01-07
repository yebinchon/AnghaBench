
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int FILE ;


 int Write1DMatrix (int *,int,int *) ;
 int fprintf (int *,char*) ;

void Write2DMatrix (FILE *f, int y, int x, vec_t *m) {
 int i;

 fprintf (f, "( ");
 for (i = 0 ; i < y ; i++) {
  Write1DMatrix (f, x, m + i*x);
  fprintf (f, " ");
 }
 fprintf (f, ")\n");
}
