
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int bound_right; int bound_left; int bound_bottom; int bound_top; } ;
typedef TYPE_1__ AVSphericalMapping ;


 int UINT32_MAX ;

void av_spherical_tile_bounds(const AVSphericalMapping *map,
                              size_t width, size_t height,
                              size_t *left, size_t *top,
                              size_t *right, size_t *bottom)
{

    uint64_t orig_width = (uint64_t) width * UINT32_MAX /
                           (UINT32_MAX - map->bound_right - map->bound_left);
    uint64_t orig_height = (uint64_t) height * UINT32_MAX /
                           (UINT32_MAX - map->bound_bottom - map->bound_top);


    *left = (orig_width * map->bound_left + UINT32_MAX - 1) / UINT32_MAX;
    *top = (orig_height * map->bound_top + UINT32_MAX - 1) / UINT32_MAX;
    *right = orig_width - width - *left;
    *bottom = orig_height - height - *top;
}
