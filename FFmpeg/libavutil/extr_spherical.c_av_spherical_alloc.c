
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVSphericalMapping ;


 int * av_mallocz (int) ;

AVSphericalMapping *av_spherical_alloc(size_t *size)
{
    AVSphericalMapping *spherical = av_mallocz(sizeof(AVSphericalMapping));
    if (!spherical)
        return ((void*)0);

    if (size)
        *size = sizeof(*spherical);

    return spherical;
}
