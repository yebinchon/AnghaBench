
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;
typedef int AVDictionary ;


 int AV_LANG_ISO639_2_BIBL ;
 int AV_LOG_WARNING ;
 scalar_t__ av_dict_set (int **,char*,char const*,int ) ;
 int av_log (int *,int ,char*) ;
 char* ff_convert_lang_to (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void set_language(AVFormatContext *s, const char *rfc1766, AVDictionary **met)
{

    if (rfc1766 && strlen(rfc1766) > 1) {
        const char primary_tag[3] = { rfc1766[0], rfc1766[1], '\0' };
        const char *iso6392 = ff_convert_lang_to(primary_tag,
                                                       AV_LANG_ISO639_2_BIBL);
        if (iso6392)
            if (av_dict_set(met, "language", iso6392, 0) < 0)
                av_log(s, AV_LOG_WARNING, "av_dict_set failed.\n");
    }
}
