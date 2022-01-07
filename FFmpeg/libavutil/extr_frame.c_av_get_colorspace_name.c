
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
 unsigned int FF_ARRAY_ELEMS (char const* const*) ;

const char *av_get_colorspace_name(enum AVColorSpace val)
{
    static const char * const name[] = {
        [131] = "GBR",
        [133] = "bt709",
        [132] = "fcc",
        [134] = "bt470bg",
        [130] = "smpte170m",
        [129] = "smpte240m",
        [128] = "YCgCo",
    };
    if ((unsigned)val >= FF_ARRAY_ELEMS(name))
        return ((void*)0);
    return name[val];
}
