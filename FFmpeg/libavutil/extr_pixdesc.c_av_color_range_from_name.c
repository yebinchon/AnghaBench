
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int EINVAL ;
 int FF_ARRAY_ELEMS (int *) ;
 int * color_range_names ;
 size_t strlen (int ) ;
 int strncmp (int ,char const*,size_t) ;

int av_color_range_from_name(const char *name)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(color_range_names); i++) {
        size_t len = strlen(color_range_names[i]);
        if (!strncmp(color_range_names[i], name, len))
            return i;
    }

    return AVERROR(EINVAL);
}
