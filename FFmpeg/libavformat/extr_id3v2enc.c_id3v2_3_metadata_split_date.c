
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int year ;
typedef int day_month ;
struct TYPE_4__ {char* key; char* value; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 int av_dict_free (int **) ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_dict_set (int **,char const*,char const*,int ) ;
 int av_strcasecmp (char const*,char*) ;
 int av_strlcpy (char*,char const*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static void id3v2_3_metadata_split_date(AVDictionary **pm)
{
    AVDictionaryEntry *mtag = ((void*)0);
    AVDictionary *dst = ((void*)0);
    const char *key, *value;
    char year[5] = {0}, day_month[5] = {0};
    int i;

    while ((mtag = av_dict_get(*pm, "", mtag, AV_DICT_IGNORE_SUFFIX))) {
        key = mtag->key;
        if (!av_strcasecmp(key, "date")) {

            value = mtag->value;
            i = 0;
            while (value[i] >= '0' && value[i] <= '9') i++;
            if (value[i] == '\0' || value[i] == '-') {
                av_strlcpy(year, value, sizeof(year));
                av_dict_set(&dst, "TYER", year, 0);

                if (value[i] == '-' &&
                    value[i+1] >= '0' && value[i+1] <= '1' &&
                    value[i+2] >= '0' && value[i+2] <= '9' &&
                    value[i+3] == '-' &&
                    value[i+4] >= '0' && value[i+4] <= '3' &&
                    value[i+5] >= '0' && value[i+5] <= '9' &&
                    (value[i+6] == '\0' || value[i+6] == ' ')) {
                    snprintf(day_month, sizeof(day_month), "%.2s%.2s", value + i + 4, value + i + 1);
                    av_dict_set(&dst, "TDAT", day_month, 0);
                }
            } else
                av_dict_set(&dst, key, value, 0);
        } else
            av_dict_set(&dst, key, mtag->value, 0);
    }
    av_dict_free(pm);
    *pm = dst;
}
