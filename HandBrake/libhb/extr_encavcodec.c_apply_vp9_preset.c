
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int apply_vpx_preset (int **,char const*) ;
 int av_dict_set (int **,char*,char*,int ) ;

__attribute__((used)) static int apply_vp9_preset(AVDictionary ** av_opts, const char * preset)
{
    av_dict_set(av_opts, "row-mt", "1", 0);
    return apply_vpx_preset(av_opts, preset);
}
