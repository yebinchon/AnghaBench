
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xr; } ;
struct ColorPrimaries {TYPE_1__ coeff; } ;
typedef enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;


 int AVCOL_PRI_NB ;
 struct ColorPrimaries* color_primaries ;

__attribute__((used)) static const struct ColorPrimaries *get_color_primaries(enum AVColorPrimaries prm)
{
    const struct ColorPrimaries *p;

    if (prm >= AVCOL_PRI_NB)
        return ((void*)0);
    p = &color_primaries[prm];
    if (!p->coeff.xr)
        return ((void*)0);

    return p;
}
