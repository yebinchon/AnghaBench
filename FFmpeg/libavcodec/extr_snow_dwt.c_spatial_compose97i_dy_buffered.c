
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int slice_buffer ;
struct TYPE_6__ {int y; int * b3; int * b2; int * b1; int * b0; } ;
struct TYPE_5__ {int (* horizontal_compose97i ) (int *,int *,int) ;int (* vertical_compose97i ) (int *,int *,int *,int *,int *,int *,int) ;} ;
typedef TYPE_1__ SnowDWTContext ;
typedef int IDWTELEM ;
typedef TYPE_2__ DWTCompose ;


 int avpriv_mirror (int,int) ;
 int * slice_buffer_get_line (int *,int) ;
 int stub1 (int *,int *,int *,int *,int *,int *,int) ;
 int stub2 (int *,int *,int) ;
 int stub3 (int *,int *,int) ;
 int vertical_compose97iH0 (int *,int *,int *,int) ;
 int vertical_compose97iH1 (int *,int *,int *,int) ;
 int vertical_compose97iL0 (int *,int *,int *,int) ;
 int vertical_compose97iL1 (int *,int *,int *,int) ;

__attribute__((used)) static void spatial_compose97i_dy_buffered(SnowDWTContext *dsp, DWTCompose *cs,
                                           slice_buffer * sb, IDWTELEM *temp,
                                           int width, int height,
                                           int stride_line)
{
    int y = cs->y;

    IDWTELEM *b0 = cs->b0;
    IDWTELEM *b1 = cs->b1;
    IDWTELEM *b2 = cs->b2;
    IDWTELEM *b3 = cs->b3;
    IDWTELEM *b4 = slice_buffer_get_line(sb,
                                         avpriv_mirror(y + 3, height - 1) *
                                         stride_line);
    IDWTELEM *b5 = slice_buffer_get_line(sb,
                                         avpriv_mirror(y + 4, height - 1) *
                                         stride_line);

    if (y > 0 && y + 4 < height) {
        dsp->vertical_compose97i(b0, b1, b2, b3, b4, b5, width);
    } else {
        if (y + 3 < (unsigned)height)
            vertical_compose97iL1(b3, b4, b5, width);
        if (y + 2 < (unsigned)height)
            vertical_compose97iH1(b2, b3, b4, width);
        if (y + 1 < (unsigned)height)
            vertical_compose97iL0(b1, b2, b3, width);
        if (y + 0 < (unsigned)height)
            vertical_compose97iH0(b0, b1, b2, width);
    }

    if (y - 1 < (unsigned)height)
        dsp->horizontal_compose97i(b0, temp, width);
    if (y + 0 < (unsigned)height)
        dsp->horizontal_compose97i(b1, temp, width);

    cs->b0 = b2;
    cs->b1 = b3;
    cs->b2 = b4;
    cs->b3 = b5;
    cs->y += 2;
}
