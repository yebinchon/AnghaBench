
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int EINVAL ;

int ff_h261_get_picture_format(int width, int height)
{

    if (width == 176 && height == 144)
        return 0;

    else if (width == 352 && height == 288)
        return 1;

    else
        return AVERROR(EINVAL);
}
