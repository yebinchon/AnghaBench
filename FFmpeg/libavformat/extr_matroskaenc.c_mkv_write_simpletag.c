
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int ebml_master ;
struct TYPE_3__ {char const* value; int key; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVDictionaryEntry ;


 int AVERROR (int ) ;
 int AV_LANG_ISO639_2_BIBL ;
 int ENOMEM ;
 int MATROSKA_ID_SIMPLETAG ;
 int MATROSKA_ID_TAGLANG ;
 int MATROSKA_ID_TAGNAME ;
 int MATROSKA_ID_TAGSTRING ;
 int av_freep (char**) ;
 char* av_strdup (int ) ;
 int end_ebml_master (int *,int ) ;
 char* ff_convert_lang_to (char*,int ) ;
 int put_ebml_string (int *,int ,char const*) ;
 int start_ebml_master (int *,int ,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int mkv_write_simpletag(AVIOContext *pb, AVDictionaryEntry *t)
{
    uint8_t *key = av_strdup(t->key);
    uint8_t *p = key;
    const uint8_t *lang = ((void*)0);
    ebml_master tag;

    if (!key)
        return AVERROR(ENOMEM);

    if ((p = strrchr(p, '-')) &&
        (lang = ff_convert_lang_to(p + 1, AV_LANG_ISO639_2_BIBL)))
        *p = 0;

    p = key;
    while (*p) {
        if (*p == ' ')
            *p = '_';
        else if (*p >= 'a' && *p <= 'z')
            *p -= 'a' - 'A';
        p++;
    }

    tag = start_ebml_master(pb, MATROSKA_ID_SIMPLETAG, 0);
    put_ebml_string(pb, MATROSKA_ID_TAGNAME, key);
    if (lang)
        put_ebml_string(pb, MATROSKA_ID_TAGLANG, lang);
    put_ebml_string(pb, MATROSKA_ID_TAGSTRING, t->value);
    end_ebml_master(pb, tag);

    av_freep(&key);
    return 0;
}
