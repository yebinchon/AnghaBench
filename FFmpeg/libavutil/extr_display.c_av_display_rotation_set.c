
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int CONV_DB (double) ;
 double M_PI ;
 double cos (double) ;
 int memset (int*,int ,int) ;
 double sin (double) ;

void av_display_rotation_set(int32_t matrix[9], double angle)
{
    double radians = -angle * M_PI / 180.0f;
    double c = cos(radians);
    double s = sin(radians);

    memset(matrix, 0, 9 * sizeof(int32_t));

    matrix[0] = CONV_DB(c);
    matrix[1] = CONV_DB(-s);
    matrix[3] = CONV_DB(s);
    matrix[4] = CONV_DB(c);
    matrix[8] = 1 << 30;
}
