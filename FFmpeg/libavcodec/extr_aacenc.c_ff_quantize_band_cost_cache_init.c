
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AACEncContext {int quantize_band_cost_cache_generation; int quantize_band_cost_cache; } ;


 int memset (int ,int ,int) ;

void ff_quantize_band_cost_cache_init(struct AACEncContext *s)
{
    ++s->quantize_band_cost_cache_generation;
    if (s->quantize_band_cost_cache_generation == 0) {
        memset(s->quantize_band_cost_cache, 0, sizeof(s->quantize_band_cost_cache));
        s->quantize_band_cost_cache_generation = 1;
    }
}
