
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double atan (double) ;

__attribute__((used)) static inline double freq2bark(double freq)
{
    return 3.5 * atan((freq / 7500.0) * (freq / 7500.0)) + 13.0 * atan(freq * 0.00076);
}
