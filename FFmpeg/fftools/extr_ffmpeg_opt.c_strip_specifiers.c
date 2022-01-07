
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_dict_set (int **,int ,int ,int ) ;
 char* strchr (int ,char) ;

__attribute__((used)) static AVDictionary *strip_specifiers(AVDictionary *dict)
{
    AVDictionaryEntry *e = ((void*)0);
    AVDictionary *ret = ((void*)0);

    while ((e = av_dict_get(dict, "", e, AV_DICT_IGNORE_SUFFIX))) {
        char *p = strchr(e->key, ':');

        if (p)
            *p = 0;
        av_dict_set(&ret, e->key, e->value, 0);
        if (p)
            *p = ':';
    }
    return ret;
}
