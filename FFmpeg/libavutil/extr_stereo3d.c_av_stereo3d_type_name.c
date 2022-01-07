
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FF_ARRAY_ELEMS (char const**) ;
 char const** stereo3d_type_names ;

const char *av_stereo3d_type_name(unsigned int type)
{
    if (type >= FF_ARRAY_ELEMS(stereo3d_type_names))
        return "unknown";

    return stereo3d_type_names[type];
}
