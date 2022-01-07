
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int FILE ;


 int Write2DMatrix (int *,int,int,int *) ;
 int fprintf (int *,char*) ;

void Write3DMatrix (FILE *f, int z, int y, int x, vec_t *m) {
 int i;

 fprintf (f, "(\n");
 for (i = 0 ; i < z ; i++) {
  Write2DMatrix (f, y, x, m + i*(x*y) );
 }
 fprintf (f, ")\n");
}
