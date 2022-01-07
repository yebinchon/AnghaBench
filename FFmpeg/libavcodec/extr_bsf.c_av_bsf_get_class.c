
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVClass ;


 int const bsf_class ;

const AVClass *av_bsf_get_class(void)
{
    return &bsf_class;
}
