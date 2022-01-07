
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* index; } ;
typedef TYPE_1__ Palette ;



__attribute__((used)) static inline int pixel_color7_fast(Palette * palette, unsigned c15)
{
    return palette->index[c15];
}
