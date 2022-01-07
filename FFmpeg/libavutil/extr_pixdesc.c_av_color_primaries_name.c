
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;


 unsigned int AVCOL_PRI_NB ;
 char const** color_primaries_names ;

const char *av_color_primaries_name(enum AVColorPrimaries primaries)
{
    return (unsigned) primaries < AVCOL_PRI_NB ?
        color_primaries_names[primaries] : ((void*)0);
}
