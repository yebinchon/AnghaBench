
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double av_clipd (double,double,double) ;
 int lrint (double) ;

__attribute__((used)) static double r_func(void *p, double x)
{
    x = av_clipd(x, 0.0, 1.0);
    return lrint(x*255.0) << 16;
}
