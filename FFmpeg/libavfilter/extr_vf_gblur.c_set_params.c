
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float pow (double,int) ;
 double sqrt (double) ;

__attribute__((used)) static void set_params(float sigma, int steps, float *postscale, float *boundaryscale, float *nu)
{
    double dnu, lambda;

    lambda = (sigma * sigma) / (2.0 * steps);
    dnu = (1.0 + 2.0 * lambda - sqrt(1.0 + 4.0 * lambda)) / (2.0 * lambda);
    *postscale = pow(dnu / lambda, steps);
    *boundaryscale = 1.0 / (1.0 - dnu);
    *nu = (float)dnu;
}
