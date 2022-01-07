
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FF_ARRAY_ELEMS (int ) ;
 char* av_get_known_color_name (int,int const**) ;
 int color_table ;
 int printf (char*,...) ;

__attribute__((used)) static void test_av_get_known_color_name(void)
{
    int i;
    const uint8_t *rgba;
    const char *color;

    for (i = 0; i < FF_ARRAY_ELEMS(color_table); ++i) {
        color = av_get_known_color_name(i, &rgba);
        if (color)
            printf("%s -> R(%d) G(%d) B(%d) A(%d)\n",
                    color, rgba[0], rgba[1], rgba[2], rgba[3]);
        else
            printf("Color ID: %d not found\n", i);
    }
}
