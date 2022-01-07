
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_ARRAY_ELEMS (int *) ;
 int * spherical_projection_names ;
 size_t strlen (int ) ;
 int strncmp (int ,char const*,size_t) ;

int av_spherical_from_name(const char *name)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(spherical_projection_names); i++) {
        size_t len = strlen(spherical_projection_names[i]);
        if (!strncmp(spherical_projection_names[i], name, len))
            return i;
    }

    return -1;
}
