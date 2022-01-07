
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int key ;
struct TYPE_5__ {int nb_elem; TYPE_1__* elem; } ;
struct TYPE_4__ {char* lang; char* name; TYPE_2__ sub; int string; scalar_t__ def; } ;
typedef TYPE_1__ MatroskaTag ;
typedef TYPE_2__ EbmlList ;
typedef int AVFormatContext ;
typedef int AVDictionary ;


 int AV_LOG_WARNING ;
 int av_dict_set (int **,char*,int ,int ) ;
 int av_log (int *,int ,char*) ;
 int av_strlcat (char*,char const*,int) ;
 int av_strlcpy (char*,char*,int) ;
 int ff_metadata_conv (int **,int *,int ) ;
 int ff_mkv_metadata_conv ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void matroska_convert_tag(AVFormatContext *s, EbmlList *list,
                                 AVDictionary **metadata, char *prefix)
{
    MatroskaTag *tags = list->elem;
    char key[1024];
    int i;

    for (i = 0; i < list->nb_elem; i++) {
        const char *lang = tags[i].lang &&
                           strcmp(tags[i].lang, "und") ? tags[i].lang : ((void*)0);

        if (!tags[i].name) {
            av_log(s, AV_LOG_WARNING, "Skipping invalid tag with no TagName.\n");
            continue;
        }
        if (prefix)
            snprintf(key, sizeof(key), "%s/%s", prefix, tags[i].name);
        else
            av_strlcpy(key, tags[i].name, sizeof(key));
        if (tags[i].def || !lang) {
            av_dict_set(metadata, key, tags[i].string, 0);
            if (tags[i].sub.nb_elem)
                matroska_convert_tag(s, &tags[i].sub, metadata, key);
        }
        if (lang) {
            av_strlcat(key, "-", sizeof(key));
            av_strlcat(key, lang, sizeof(key));
            av_dict_set(metadata, key, tags[i].string, 0);
            if (tags[i].sub.nb_elem)
                matroska_convert_tag(s, &tags[i].sub, metadata, key);
        }
    }
    ff_metadata_conv(metadata, ((void*)0), ff_mkv_metadata_conv);
}
