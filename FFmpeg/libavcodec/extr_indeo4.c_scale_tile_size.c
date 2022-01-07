
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int scale_tile_size(int def_size, int size_factor)
{
    return size_factor == 15 ? def_size : (size_factor + 1) << 5;
}
