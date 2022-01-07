
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR_OPTION_NOT_FOUND ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_ERROR ;
 int av_dict_free (int **) ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_dict_set (int **,int ,int ,int ) ;
 int av_log (void*,int ,char*,int ,int ) ;
 int av_opt_set (void*,int ,int ,int) ;

int av_opt_set_dict2(void *obj, AVDictionary **options, int search_flags)
{
    AVDictionaryEntry *t = ((void*)0);
    AVDictionary *tmp = ((void*)0);
    int ret = 0;

    if (!options)
        return 0;

    while ((t = av_dict_get(*options, "", t, AV_DICT_IGNORE_SUFFIX))) {
        ret = av_opt_set(obj, t->key, t->value, search_flags);
        if (ret == AVERROR_OPTION_NOT_FOUND)
            ret = av_dict_set(&tmp, t->key, t->value, 0);
        if (ret < 0) {
            av_log(obj, AV_LOG_ERROR, "Error setting option %s to value %s.\n", t->key, t->value);
            av_dict_free(&tmp);
            return ret;
        }
        ret = 0;
    }
    av_dict_free(options);
    *options = tmp;
    return ret;
}
