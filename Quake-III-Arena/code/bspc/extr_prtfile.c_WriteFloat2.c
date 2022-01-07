
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double vec_t ;
typedef int FILE ;


 scalar_t__ Q_rint (double) ;
 double fabs (scalar_t__) ;
 int fprintf (int *,char*,double) ;

void WriteFloat2 (FILE *f, vec_t v)
{
 if ( fabs(v - Q_rint(v)) < 0.001 )
  fprintf (f,"%i ",(int)Q_rint(v));
 else
  fprintf (f,"%f ",v);
}
