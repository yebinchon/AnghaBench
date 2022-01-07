
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_ARRAY_ELEMS (int *) ;
 int * stereo3d_type_names ;
 size_t strlen (int ) ;
 int strncmp (int ,char const*,size_t) ;

int av_stereo3d_from_name(const char *name)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(stereo3d_type_names); i++) {
        size_t len = strlen(stereo3d_type_names[i]);
        if (!strncmp(stereo3d_type_names[i], name, len))
            return i;
    }

    return -1;
}
