
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MultiplyMatrix (double,double,double,double*,double*,double*,int ) ;
 int RGB2YUV_matrix ;

void Colours_RGB2YUV(double r, double g, double b, double *y, double *u, double *v)
{
 MultiplyMatrix(r, g, b, y, u, v, RGB2YUV_matrix);
}
