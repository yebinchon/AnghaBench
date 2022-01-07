
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int apply_vpx_preset (int **,char const*) ;

__attribute__((used)) static int apply_vp8_preset(AVDictionary ** av_opts, const char * preset)
{
    return apply_vpx_preset(av_opts, preset);
}
