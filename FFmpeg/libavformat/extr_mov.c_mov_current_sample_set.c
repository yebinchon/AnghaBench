
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int current_sample; int current_index; TYPE_1__* current_index_range; TYPE_1__* index_ranges; } ;
struct TYPE_4__ {int end; int start; } ;
typedef TYPE_2__ MOVStreamContext ;



__attribute__((used)) static void mov_current_sample_set(MOVStreamContext *sc, int current_sample)
{
    int64_t range_size;

    sc->current_sample = current_sample;
    sc->current_index = current_sample;
    if (!sc->index_ranges) {
        return;
    }

    for (sc->current_index_range = sc->index_ranges;
        sc->current_index_range->end;
        sc->current_index_range++) {
        range_size = sc->current_index_range->end - sc->current_index_range->start;
        if (range_size > current_sample) {
            sc->current_index = sc->current_index_range->start + current_sample;
            break;
        }
        current_sample -= range_size;
    }
}
