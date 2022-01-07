
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;


 int ff_fill_rgb2xyz_table (int *,int *,double**) ;
 int ff_matrix_invert_3x3 (double**,double**) ;
 int ff_matrix_mul_3x3 (double**,double**,double**) ;
 int * primaries_table ;
 int * whitepoint_table ;

__attribute__((used)) static void get_rgb2rgb_matrix(enum AVColorPrimaries in, enum AVColorPrimaries out,
                               double rgb2rgb[3][3]) {
    double rgb2xyz[3][3], xyz2rgb[3][3];

    ff_fill_rgb2xyz_table(&primaries_table[out], &whitepoint_table[out], rgb2xyz);
    ff_matrix_invert_3x3(rgb2xyz, xyz2rgb);
    ff_fill_rgb2xyz_table(&primaries_table[in], &whitepoint_table[in], rgb2xyz);
    ff_matrix_mul_3x3(rgb2rgb, rgb2xyz, xyz2rgb);
}
