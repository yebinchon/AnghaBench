
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_strlcat (char*,char const*,int) ;
 int av_strlcpy (char*,char const*,int) ;
 scalar_t__ av_strstart (char const*,char*,int *) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 char* strstr (char const*,char*) ;

void ff_make_absolute_url(char *buf, int size, const char *base,
                          const char *rel)
{
    char *sep, *path_query;

    if (base && strstr(base, "://") && rel[0] == '/') {
        if (base != buf)
            av_strlcpy(buf, base, size);
        sep = strstr(buf, "://");
        if (sep) {

            if (rel[1] == '/') {
                sep[1] = '\0';
            } else {

                sep += 3;
                sep = strchr(sep, '/');
                if (sep)
                    *sep = '\0';
            }
        }
        av_strlcat(buf, rel, size);
        return;
    }

    if (!base || strstr(rel, "://") || rel[0] == '/') {
        av_strlcpy(buf, rel, size);
        return;
    }
    if (base != buf)
        av_strlcpy(buf, base, size);


    path_query = strchr(buf, '?');
    if (path_query)
        *path_query = '\0';


    if (rel[0] == '?') {
        av_strlcat(buf, rel, size);
        return;
    }


    sep = strrchr(buf, '/');
    if (sep)
        sep[1] = '\0';
    else
        buf[0] = '\0';
    while (av_strstart(rel, "../", ((void*)0)) && sep) {

        sep[0] = '\0';
        sep = strrchr(buf, '/');

        if (!strcmp(sep ? &sep[1] : buf, "..")) {

            av_strlcat(buf, "/", size);
            break;
        }

        if (sep)
            sep[1] = '\0';
        else
            buf[0] = '\0';
        rel += 3;
    }
    av_strlcat(buf, rel, size);
}
