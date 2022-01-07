
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int * metadata; } ;
struct TYPE_6__ {char const* key; char const* value; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;
typedef TYPE_2__ AVChapter ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

int64_t ff_vorbiscomment_length(AVDictionary *m, const char *vendor_string,
                                AVChapter **chapters, unsigned int nb_chapters)
{
    int64_t len = 8;
    len += strlen(vendor_string);
    if (chapters && nb_chapters) {
        for (int i = 0; i < nb_chapters; i++) {
            AVDictionaryEntry *tag = ((void*)0);
            len += 4 + 12 + 1 + 10;
            while ((tag = av_dict_get(chapters[i]->metadata, "", tag, AV_DICT_IGNORE_SUFFIX))) {
                int64_t len1 = !strcmp(tag->key, "title") ? 4 : strlen(tag->key);
                len += 4 + 10 + len1 + 1 + strlen(tag->value);
            }
        }
    }
    if (m) {
        AVDictionaryEntry *tag = ((void*)0);
        while ((tag = av_dict_get(m, "", tag, AV_DICT_IGNORE_SUFFIX))) {
            len += 4 +strlen(tag->key) + 1 + strlen(tag->value);
        }
    }
    return len;
}
