
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_PI ;
 scalar_t__ M_PI_2 ;
 double fabs (double) ;
 int sin (scalar_t__) ;

__attribute__((used)) static inline double factor(double y, double k, double aa1, double aa)
{
    return 0.5 * (sin(M_PI * (fabs(y - k) - aa1) / aa - M_PI_2) + 1);
}
