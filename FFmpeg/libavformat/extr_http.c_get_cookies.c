
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tm {int member_0; } ;
struct TYPE_8__ {char const* value; int key; } ;
struct TYPE_7__ {int * cookie_dict; int cookies; } ;
typedef TYPE_1__ HTTPContext ;
typedef TYPE_2__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 char* av_asprintf (char*,char*,char const*,...) ;
 int av_dict_free (int **) ;
 TYPE_2__* av_dict_get (int *,char*,int *,int ) ;
 int av_free (char*) ;
 int av_gettime () ;
 int av_log (TYPE_1__*,int ,char*,char*) ;
 scalar_t__ av_strcasecmp (char const*,char const*) ;
 char* av_strdup (int ) ;
 scalar_t__ av_strncasecmp (char const*,char const*,int) ;
 char* av_strtok (char*,char*,char**) ;
 int av_timegm (struct tm*) ;
 scalar_t__ parse_cookie (TYPE_1__*,char*,int **) ;
 scalar_t__ parse_set_cookie (char*,int **) ;
 int parse_set_cookie_expiry_time (char const*,struct tm*) ;
 int strlen (char const*) ;

__attribute__((used)) static int get_cookies(HTTPContext *s, char **cookies, const char *path,
                       const char *domain)
{


    int ret = 0;
    char *cookie, *set_cookies, *next;


    av_dict_free(&s->cookie_dict);

    if (!s->cookies)
        return 0;

    next = set_cookies = av_strdup(s->cookies);
    if (!next)
        return AVERROR(ENOMEM);

    *cookies = ((void*)0);
    while ((cookie = av_strtok(next, "\n", &next)) && !ret) {
        AVDictionary *cookie_params = ((void*)0);
        AVDictionaryEntry *cookie_entry, *e;


        if (parse_cookie(s, cookie, &s->cookie_dict))
            av_log(s, AV_LOG_WARNING, "Unable to parse '%s'\n", cookie);


        if (parse_set_cookie(cookie, &cookie_params))
            goto skip_cookie;


        cookie_entry = av_dict_get(cookie_params, "", ((void*)0), AV_DICT_IGNORE_SUFFIX);
        if (!cookie_entry || !cookie_entry->value)
            goto skip_cookie;


        if ((e = av_dict_get(cookie_params, "expires", ((void*)0), 0)) && e->value) {
            struct tm tm_buf = {0};
            if (!parse_set_cookie_expiry_time(e->value, &tm_buf)) {
                if (av_timegm(&tm_buf) < av_gettime() / 1000000)
                    goto skip_cookie;
            }
        }


        if ((e = av_dict_get(cookie_params, "domain", ((void*)0), 0)) && e->value) {

            int domain_offset = strlen(domain) - strlen(e->value);
            if (domain_offset < 0)
                goto skip_cookie;


            if (av_strcasecmp(&domain[domain_offset], e->value))
                goto skip_cookie;
        }


        e = av_dict_get(cookie_params, "path", ((void*)0), 0);
        if (!e || av_strncasecmp(path, e->value, strlen(e->value)))
            goto skip_cookie;


        if (!*cookies) {
            *cookies = av_asprintf("%s=%s", cookie_entry->key, cookie_entry->value);
        } else {
            char *tmp = *cookies;
            *cookies = av_asprintf("%s; %s=%s", tmp, cookie_entry->key, cookie_entry->value);
            av_free(tmp);
        }
        if (!*cookies)
            ret = AVERROR(ENOMEM);

    skip_cookie:
        av_dict_free(&cookie_params);
    }

    av_free(set_cookies);

    return ret;
}
