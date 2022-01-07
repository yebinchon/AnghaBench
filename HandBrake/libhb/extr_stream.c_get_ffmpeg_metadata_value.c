
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static char *get_ffmpeg_metadata_value( AVDictionary *m, char *key )
{
    AVDictionaryEntry *tag = ((void*)0);

    while ( (tag = av_dict_get(m, "", tag, AV_DICT_IGNORE_SUFFIX)) )
    {
        if ( !strcmp( key, tag->key ) )
        {
            return tag->value;
        }
    }
    return ((void*)0);
}
