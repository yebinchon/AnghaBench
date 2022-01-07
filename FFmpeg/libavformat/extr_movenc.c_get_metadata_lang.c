
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tag2 ;
struct TYPE_8__ {int * key; int value; } ;
struct TYPE_7__ {int metadata; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_2__* av_dict_get (int ,char const*,TYPE_2__*,int ) ;
 int ff_mov_iso639_to_lang (int *,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int strcmp (int ,int ) ;
 int strlen (int *) ;

__attribute__((used)) static AVDictionaryEntry *get_metadata_lang(AVFormatContext *s,
                                            const char *tag, int *lang)
{
    int l, len, len2;
    AVDictionaryEntry *t, *t2 = ((void*)0);
    char tag2[16];

    *lang = 0;

    if (!(t = av_dict_get(s->metadata, tag, ((void*)0), 0)))
        return ((void*)0);

    len = strlen(t->key);
    snprintf(tag2, sizeof(tag2), "%s-", tag);
    while ((t2 = av_dict_get(s->metadata, tag2, t2, AV_DICT_IGNORE_SUFFIX))) {
        len2 = strlen(t2->key);
        if (len2 == len + 4 && !strcmp(t->value, t2->value)
            && (l = ff_mov_iso639_to_lang(&t2->key[len2 - 3], 1)) >= 0) {
            *lang = l;
            return t;
        }
    }
    return t;
}
