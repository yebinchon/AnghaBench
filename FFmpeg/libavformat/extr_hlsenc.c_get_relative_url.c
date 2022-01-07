
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_strncasecmp (char const*,char const*,size_t) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char* get_relative_url(const char *master_url, const char *media_url)
{
    const char *p = strrchr(master_url, '/');
    size_t base_len = 0;

    if (!p) p = strrchr(master_url, '\\');

    if (p) {
        base_len = p + 1 - master_url;
        if (av_strncasecmp(master_url, media_url, base_len)) {
            av_log(((void*)0), AV_LOG_WARNING, "Unable to find relative url\n");
            return ((void*)0);
        }
    }

    return media_url + base_len;
}
