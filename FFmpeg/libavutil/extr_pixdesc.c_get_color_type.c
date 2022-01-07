
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int nb_components; scalar_t__ name; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AV_PIX_FMT_FLAG_PAL ;
 int AV_PIX_FMT_FLAG_RGB ;
 int FF_COLOR_GRAY ;
 int FF_COLOR_NA ;
 int FF_COLOR_RGB ;
 int FF_COLOR_XYZ ;
 int FF_COLOR_YUV ;
 int FF_COLOR_YUV_JPEG ;
 int strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static int get_color_type(const AVPixFmtDescriptor *desc) {
    if (desc->flags & AV_PIX_FMT_FLAG_PAL)
        return FF_COLOR_RGB;

    if(desc->nb_components == 1 || desc->nb_components == 2)
        return FF_COLOR_GRAY;

    if(desc->name && !strncmp(desc->name, "yuvj", 4))
        return FF_COLOR_YUV_JPEG;

    if(desc->name && !strncmp(desc->name, "xyz", 3))
        return FF_COLOR_XYZ;

    if(desc->flags & AV_PIX_FMT_FLAG_RGB)
        return FF_COLOR_RGB;

    if(desc->nb_components == 0)
        return FF_COLOR_NA;

    return FF_COLOR_YUV;
}
