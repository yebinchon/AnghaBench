
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 scalar_t__ mkv_check_tag_name (int ,int ) ;

__attribute__((used)) static int mkv_check_tag(AVDictionary *m, uint32_t elementid)
{
    AVDictionaryEntry *t = ((void*)0);

    while ((t = av_dict_get(m, "", t, AV_DICT_IGNORE_SUFFIX)))
        if (mkv_check_tag_name(t->key, elementid))
            return 1;

    return 0;
}
