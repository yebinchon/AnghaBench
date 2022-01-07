
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int const*,char*,TYPE_1__*,int ) ;
 int av_dict_set (int **,int ,int ,int) ;

int av_dict_copy(AVDictionary **dst, const AVDictionary *src, int flags)
{
    AVDictionaryEntry *t = ((void*)0);

    while ((t = av_dict_get(src, "", t, AV_DICT_IGNORE_SUFFIX))) {
        int ret = av_dict_set(dst, t->key, t->value, flags);
        if (ret < 0)
            return ret;
    }

    return 0;
}
