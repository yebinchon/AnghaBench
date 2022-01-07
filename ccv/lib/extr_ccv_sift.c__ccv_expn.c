
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double EXPN_MAX ;
 double EXPN_SZ ;
 double* _ccv_expn_tab ;
 int assert (int) ;

__attribute__((used)) static inline double _ccv_expn(double x)
{
 double a, b, r;
 int i;
 assert(0 <= x && x <= EXPN_MAX);
 if (x > EXPN_MAX)
  return 0.0;
 x *= EXPN_SZ / EXPN_MAX;
 i = (int)x;
 r = x - i;
 a = _ccv_expn_tab[i];
 b = _ccv_expn_tab[i + 1];
 return a + r * (b - a);
}
