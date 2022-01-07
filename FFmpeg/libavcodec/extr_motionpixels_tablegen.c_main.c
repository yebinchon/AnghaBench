
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int motionpixels_tableinit () ;
 int mp_rgb_yuv_table ;
 int printf (char*) ;
 int write_fileheader () ;
 int write_int8_t_2d_array (int ,int,int) ;

int main(void)
{
    motionpixels_tableinit();

    write_fileheader();

    printf("static const YuvPixel mp_rgb_yuv_table[1 << 15] = {\n");
    write_int8_t_2d_array(mp_rgb_yuv_table, 1 << 15, 3);
    printf("};\n");

    return 0;
}
