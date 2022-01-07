
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCV_PI ;
 double exp (double) ;
 double sqrt (int) ;

double gaussian(double x, double y, void* data)
{
 return exp(-(x * x + y * y) / 20) / sqrt(CCV_PI * 20);
}
