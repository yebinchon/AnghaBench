
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_DICT_DONT_STRDUP_KEY ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int ENOMEM ;
 int av_dict_set (int **,char*,char*,int) ;
 int av_free (char*) ;
 int strlen (char const*) ;
 char* unescape (char const*,int) ;

__attribute__((used)) static int read_tag(const uint8_t *line, AVDictionary **m)
{
    uint8_t *key, *value;
    const uint8_t *p = line;


    while (1) {
        if (*p == '=')
            break;
        else if (*p == '\\')
            p++;

        if (*p++)
            continue;

        return 0;
    }

    if (!(key = unescape(line, p - line)))
        return AVERROR(ENOMEM);
    if (!(value = unescape(p + 1, strlen(p + 1)))) {
        av_free(key);
        return AVERROR(ENOMEM);
    }

    av_dict_set(m, key, value, AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    return 0;
}
