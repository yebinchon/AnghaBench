
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSphericalProjection { ____Placeholder_AVSphericalProjection } AVSphericalProjection ;


 unsigned int FF_ARRAY_ELEMS (char const**) ;
 char const** spherical_projection_names ;

const char *av_spherical_projection_name(enum AVSphericalProjection projection)
{
    if ((unsigned)projection >= FF_ARRAY_ELEMS(spherical_projection_names))
        return "unknown";

    return spherical_projection_names[projection];
}
