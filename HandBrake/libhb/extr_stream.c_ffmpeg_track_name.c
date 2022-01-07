
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_6__ {int metadata; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_2__* av_dict_get (int ,char*,TYPE_2__*,int ) ;
 int free (char*) ;
 char* hb_strdup_printf (char*,char const*) ;

__attribute__((used)) static const char * ffmpeg_track_name(AVStream * st, const char * lang)
{
    AVDictionaryEntry * t;
    char * key;




    t = av_dict_get(st->metadata, "title", ((void*)0), 0);
    if (t != ((void*)0) && t->value[0] != 0)
    {
        return t->value;
    }

    t = av_dict_get(st->metadata, "title-und", ((void*)0), 0);
    if (t != ((void*)0) && t->value[0] != 0)
    {
        return t->value;
    }

    key = hb_strdup_printf("title-%s", lang);
    t = av_dict_get(st->metadata, key, ((void*)0), 0);
    free(key);
    if (t != ((void*)0) && t->value[0] != 0)
    {
        return t->value;
    }
    while ((t = av_dict_get(st->metadata, "title-", t, AV_DICT_IGNORE_SUFFIX)))
    {

        if (t != ((void*)0) && t->value[0] != 0)
        {
            return t->value;
        }
    }
    return ((void*)0);
}
