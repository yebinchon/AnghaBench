
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int av_opt_set_dict2 (void*,int **,int ) ;

int av_opt_set_dict(void *obj, AVDictionary **options)
{
    return av_opt_set_dict2(obj, options, 0);
}
