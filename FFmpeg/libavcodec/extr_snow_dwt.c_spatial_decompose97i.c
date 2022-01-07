
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWTELEM ;


 int avpriv_mirror (int,int) ;
 int horizontal_decompose97i (int *,int *,int) ;
 int vertical_decompose97iH0 (int *,int *,int *,int) ;
 int vertical_decompose97iH1 (int *,int *,int *,int) ;
 int vertical_decompose97iL0 (int *,int *,int *,int) ;
 int vertical_decompose97iL1 (int *,int *,int *,int) ;

__attribute__((used)) static void spatial_decompose97i(DWTELEM *buffer, DWTELEM *temp,
                                 int width, int height, int stride)
{
    int y;
    DWTELEM *b0 = buffer + avpriv_mirror(-4 - 1, height - 1) * stride;
    DWTELEM *b1 = buffer + avpriv_mirror(-4, height - 1) * stride;
    DWTELEM *b2 = buffer + avpriv_mirror(-4 + 1, height - 1) * stride;
    DWTELEM *b3 = buffer + avpriv_mirror(-4 + 2, height - 1) * stride;

    for (y = -4; y < height; y += 2) {
        DWTELEM *b4 = buffer + avpriv_mirror(y + 3, height - 1) * stride;
        DWTELEM *b5 = buffer + avpriv_mirror(y + 4, height - 1) * stride;

        if (y + 3 < (unsigned)height)
            horizontal_decompose97i(b4, temp, width);
        if (y + 4 < (unsigned)height)
            horizontal_decompose97i(b5, temp, width);

        if (y + 3 < (unsigned)height)
            vertical_decompose97iH0(b3, b4, b5, width);
        if (y + 2 < (unsigned)height)
            vertical_decompose97iL0(b2, b3, b4, width);
        if (y + 1 < (unsigned)height)
            vertical_decompose97iH1(b1, b2, b3, width);
        if (y + 0 < (unsigned)height)
            vertical_decompose97iL1(b0, b1, b2, width);

        b0 = b2;
        b1 = b3;
        b2 = b4;
        b3 = b5;
    }
}
