
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_PI ;

__attribute__((used)) static inline double hz_2_rad(double x, double fs)
{
    return 2 * M_PI * x / fs;
}
