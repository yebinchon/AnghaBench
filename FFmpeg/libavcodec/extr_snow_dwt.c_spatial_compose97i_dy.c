
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int * b3; int * b2; int * b1; int * b0; } ;
typedef int IDWTELEM ;
typedef TYPE_1__ DWTCompose ;


 int avpriv_mirror (int,int) ;
 int ff_snow_horizontal_compose97i (int *,int *,int) ;
 int vertical_compose97iH0 (int *,int *,int *,int) ;
 int vertical_compose97iH1 (int *,int *,int *,int) ;
 int vertical_compose97iL0 (int *,int *,int *,int) ;
 int vertical_compose97iL1 (int *,int *,int *,int) ;

__attribute__((used)) static void spatial_compose97i_dy(DWTCompose *cs, IDWTELEM *buffer,
                                  IDWTELEM *temp, int width, int height,
                                  int stride)
{
    int y = cs->y;
    IDWTELEM *b0 = cs->b0;
    IDWTELEM *b1 = cs->b1;
    IDWTELEM *b2 = cs->b2;
    IDWTELEM *b3 = cs->b3;
    IDWTELEM *b4 = buffer + avpriv_mirror(y + 3, height - 1) * stride;
    IDWTELEM *b5 = buffer + avpriv_mirror(y + 4, height - 1) * stride;

    if (y + 3 < (unsigned)height)
        vertical_compose97iL1(b3, b4, b5, width);
    if (y + 2 < (unsigned)height)
        vertical_compose97iH1(b2, b3, b4, width);
    if (y + 1 < (unsigned)height)
        vertical_compose97iL0(b1, b2, b3, width);
    if (y + 0 < (unsigned)height)
        vertical_compose97iH0(b0, b1, b2, width);

    if (y - 1 < (unsigned)height)
        ff_snow_horizontal_compose97i(b0, temp, width);
    if (y + 0 < (unsigned)height)
        ff_snow_horizontal_compose97i(b1, temp, width);

    cs->b0 = b2;
    cs->b1 = b3;
    cs->b2 = b4;
    cs->b3 = b5;
    cs->y += 2;
}
