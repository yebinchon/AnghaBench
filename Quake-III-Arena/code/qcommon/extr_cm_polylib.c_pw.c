
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; double** p; } ;
typedef TYPE_1__ winding_t ;


 int printf (char*,double,double,double) ;

void pw(winding_t *w)
{
 int i;
 for (i=0 ; i<w->numpoints ; i++)
  printf ("(%5.1f, %5.1f, %5.1f)\n",w->p[i][0], w->p[i][1],w->p[i][2]);
}
