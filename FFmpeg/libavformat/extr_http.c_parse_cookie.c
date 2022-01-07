
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int member_0; } ;
struct TYPE_3__ {char* key; scalar_t__ value; } ;
typedef int HTTPContext ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_DICT_DONT_STRDUP_KEY ;
 int AV_DICT_IGNORE_SUFFIX ;
 int EINVAL ;
 int ENOMEM ;
 int av_dict_free (int **) ;
 TYPE_1__* av_dict_get (int *,char*,int *,int ) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_gettime () ;
 char* av_strndup (char const*,int) ;
 int av_timegm (struct tm*) ;
 scalar_t__ parse_set_cookie (char const*,int **) ;
 int parse_set_cookie_expiry_time (scalar_t__,struct tm*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int parse_cookie(HTTPContext *s, const char *p, AVDictionary **cookies)
{
    AVDictionary *new_params = ((void*)0);
    AVDictionaryEntry *e, *cookie_entry;
    char *eql, *name;


    if (parse_set_cookie(p, &new_params))
        return -1;


    cookie_entry = av_dict_get(new_params, "", ((void*)0), AV_DICT_IGNORE_SUFFIX);
    if (!cookie_entry || !cookie_entry->value) {
        av_dict_free(&new_params);
        return -1;
    }


    if ((e = av_dict_get(new_params, "expires", ((void*)0), 0)) && e->value) {
        struct tm new_tm = {0};
        if (!parse_set_cookie_expiry_time(e->value, &new_tm)) {
            AVDictionaryEntry *e2;


            if (av_timegm(&new_tm) < av_gettime() / 1000000) {
                av_dict_free(&new_params);
                return 0;
            }


            e2 = av_dict_get(*cookies, cookie_entry->key, ((void*)0), 0);
            if (e2 && e2->value) {
                AVDictionary *old_params = ((void*)0);
                if (!parse_set_cookie(p, &old_params)) {
                    e2 = av_dict_get(old_params, "expires", ((void*)0), 0);
                    if (e2 && e2->value) {
                        struct tm old_tm = {0};
                        if (!parse_set_cookie_expiry_time(e->value, &old_tm)) {
                            if (av_timegm(&new_tm) < av_timegm(&old_tm)) {
                                av_dict_free(&new_params);
                                av_dict_free(&old_params);
                                return -1;
                            }
                        }
                    }
                }
                av_dict_free(&old_params);
            }
        }
    }
    av_dict_free(&new_params);


    if (!(eql = strchr(p, '='))) return AVERROR(EINVAL);
    if (!(name = av_strndup(p, eql - p))) return AVERROR(ENOMEM);


    av_dict_set(cookies, name, eql, AV_DICT_DONT_STRDUP_KEY);

    return 0;
}
