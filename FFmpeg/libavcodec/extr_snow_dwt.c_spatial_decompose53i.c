
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWTELEM ;


 int avpriv_mirror (int,int) ;
 int horizontal_decompose53i (int *,int *,int) ;
 int vertical_decompose53iH0 (int *,int *,int *,int) ;
 int vertical_decompose53iL0 (int *,int *,int *,int) ;

__attribute__((used)) static void spatial_decompose53i(DWTELEM *buffer, DWTELEM *temp,
                                 int width, int height, int stride)
{
    int y;
    DWTELEM *b0 = buffer + avpriv_mirror(-2 - 1, height - 1) * stride;
    DWTELEM *b1 = buffer + avpriv_mirror(-2, height - 1) * stride;

    for (y = -2; y < height; y += 2) {
        DWTELEM *b2 = buffer + avpriv_mirror(y + 1, height - 1) * stride;
        DWTELEM *b3 = buffer + avpriv_mirror(y + 2, height - 1) * stride;

        if (y + 1 < (unsigned)height)
            horizontal_decompose53i(b2, temp, width);
        if (y + 2 < (unsigned)height)
            horizontal_decompose53i(b3, temp, width);

        if (y + 1 < (unsigned)height)
            vertical_decompose53iH0(b1, b2, b3, width);
        if (y + 0 < (unsigned)height)
            vertical_decompose53iL0(b0, b1, b2, width);

        b0 = b2;
        b1 = b3;
    }
}
