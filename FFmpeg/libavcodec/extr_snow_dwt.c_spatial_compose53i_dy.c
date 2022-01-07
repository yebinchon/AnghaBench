
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int * b1; int * b0; } ;
typedef int IDWTELEM ;
typedef TYPE_1__ DWTCompose ;


 int avpriv_mirror (int,int) ;
 int horizontal_compose53i (int *,int *,int) ;
 int vertical_compose53iH0 (int *,int *,int *,int) ;
 int vertical_compose53iL0 (int *,int *,int *,int) ;

__attribute__((used)) static void spatial_compose53i_dy(DWTCompose *cs, IDWTELEM *buffer,
                                  IDWTELEM *temp, int width, int height,
                                  int stride)
{
    int y = cs->y;
    IDWTELEM *b0 = cs->b0;
    IDWTELEM *b1 = cs->b1;
    IDWTELEM *b2 = buffer + avpriv_mirror(y + 1, height - 1) * stride;
    IDWTELEM *b3 = buffer + avpriv_mirror(y + 2, height - 1) * stride;

    if (y + 1 < (unsigned)height)
        vertical_compose53iL0(b1, b2, b3, width);
    if (y + 0 < (unsigned)height)
        vertical_compose53iH0(b0, b1, b2, width);

    if (y - 1 < (unsigned)height)
        horizontal_compose53i(b0, temp, width);
    if (y + 0 < (unsigned)height)
        horizontal_compose53i(b1, temp, width);

    cs->b0 = b2;
    cs->b1 = b3;
    cs->y += 2;
}
