
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
struct stat {int st_mtime; } ;


 scalar_t__ g_stat (char const*,struct stat*) ;
 struct tm* localtime (int *) ;
 scalar_t__ parse_datestring (char const*,struct tm*) ;
 char* strdup (char*) ;
 int strftime (char*,int,char const*,struct tm*) ;
 int strlen (char const*) ;

__attribute__((used)) static char*
get_creation_date(const char *pattern, const char *metaValue, const char *file)
{
    char date[11] = "";
    if (metaValue != ((void*)0) && strlen(metaValue) > 1)
    {
        struct tm tm;
        if (parse_datestring(metaValue, &tm))
        {
            strftime(date, 11, pattern, &tm);
        }
    }
    else
    {
        struct stat stbuf;
        if (g_stat(file, &stbuf) == 0){
            struct tm *tm;
            tm = localtime(&(stbuf.st_mtime));
            strftime(date, 11, pattern, tm);
        }
    }
    return strdup(date);
}
