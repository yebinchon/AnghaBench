
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log10 (double) ;

__attribute__((used)) static double ebur128_energy_to_loudness(double energy)
{
    return 10 * log10(energy) - 0.691;
}
