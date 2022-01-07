
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ColorSystem {int dummy; } ;


 int gamma_correct (struct ColorSystem const* const,double* const) ;

__attribute__((used)) static void
gamma_correct_rgb(const struct ColorSystem * const cs,
                  double * const r,
                  double * const g,
                  double * const b)
{
    gamma_correct(cs, r);
    gamma_correct(cs, g);
    gamma_correct(cs, b);
}
