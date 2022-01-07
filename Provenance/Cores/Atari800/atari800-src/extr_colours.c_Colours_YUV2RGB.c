
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MultiplyMatrix (double,double,double,double*,double*,double*,int ) ;
 int YUV2RGB_matrix ;

void Colours_YUV2RGB(double y, double u, double v, double *r, double *g, double *b)
{
 MultiplyMatrix(y, u, v, r, g, b, YUV2RGB_matrix);
}
