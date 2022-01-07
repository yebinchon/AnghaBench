
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ current_index; TYPE_1__* current_index_range; scalar_t__ index_ranges; int current_sample; } ;
struct TYPE_4__ {scalar_t__ end; scalar_t__ start; } ;
typedef TYPE_2__ MOVStreamContext ;



__attribute__((used)) static void mov_current_sample_inc(MOVStreamContext *sc)
{
    sc->current_sample++;
    sc->current_index++;
    if (sc->index_ranges &&
        sc->current_index >= sc->current_index_range->end &&
        sc->current_index_range->end) {
        sc->current_index_range++;
        sc->current_index = sc->current_index_range->start;
    }
}
