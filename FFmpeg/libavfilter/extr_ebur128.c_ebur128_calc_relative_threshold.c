
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* d; } ;
struct TYPE_4__ {unsigned long* block_energy_histogram; } ;
typedef TYPE_2__ FFEBUR128State ;


 double RELATIVE_GATE_FACTOR ;
 unsigned long* histogram_energies ;

__attribute__((used)) static int ebur128_calc_relative_threshold(FFEBUR128State **sts, size_t size,
                                           double *relative_threshold)
{
    size_t i, j;
    int above_thresh_counter = 0;
    *relative_threshold = 0.0;

    for (i = 0; i < size; i++) {
        unsigned long *block_energy_histogram = sts[i]->d->block_energy_histogram;
        for (j = 0; j < 1000; ++j) {
            *relative_threshold += block_energy_histogram[j] * histogram_energies[j];
            above_thresh_counter += block_energy_histogram[j];
        }
    }

    if (above_thresh_counter != 0) {
        *relative_threshold /= (double)above_thresh_counter;
        *relative_threshold *= RELATIVE_GATE_FACTOR;
    }

    return above_thresh_counter;
}
