
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVClass ;


 int const avdct_class ;

const AVClass *avcodec_dct_get_class(void)
{
    return &avdct_class;
}
