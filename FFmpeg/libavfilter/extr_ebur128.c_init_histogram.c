
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** histogram_energies ;
 void** histogram_energy_boundaries ;
 void* pow (double,double) ;

__attribute__((used)) static inline void init_histogram(void)
{
    int i;

    histogram_energy_boundaries[0] = pow(10.0, (-70.0 + 0.691) / 10.0);
    for (i = 0; i < 1000; ++i) {
        histogram_energies[i] =
            pow(10.0, ((double) i / 10.0 - 69.95 + 0.691) / 10.0);
    }
    for (i = 1; i < 1001; ++i) {
        histogram_energy_boundaries[i] =
            pow(10.0, ((double) i / 10.0 - 70.0 + 0.691) / 10.0);
    }
}
