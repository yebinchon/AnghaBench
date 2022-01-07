
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_DICT_IGNORE_SUFFIX ;
 int ENOMEM ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_free (char*) ;
 char* av_malloc (int) ;
 int av_strlcatf (char*,int,char*,int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int cookie_string(AVDictionary *dict, char **cookies)
{
    AVDictionaryEntry *e = ((void*)0);
    int len = 1;


    while (e = av_dict_get(dict, "", e, AV_DICT_IGNORE_SUFFIX))
        len += strlen(e->key) + strlen(e->value) + 1;


    e = ((void*)0);
    if (*cookies) av_free(*cookies);
    *cookies = av_malloc(len);
    if (!*cookies) return AVERROR(ENOMEM);
    *cookies[0] = '\0';


    while (e = av_dict_get(dict, "", e, AV_DICT_IGNORE_SUFFIX))
        av_strlcatf(*cookies, len, "%s%s\n", e->key, e->value);

    return 0;
}
