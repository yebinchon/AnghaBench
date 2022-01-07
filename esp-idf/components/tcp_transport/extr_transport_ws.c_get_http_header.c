
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strcasestr (char const*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char*,char*) ;
 char* trimwhitespace (char*) ;

__attribute__((used)) static char *get_http_header(const char *buffer, const char *key)
{
    char *found = strcasestr(buffer, key);
    if (found) {
        found += strlen(key);
        char *found_end = strstr(found, "\r\n");
        if (found_end) {
            found_end[0] = 0;

            return trimwhitespace(found);
        }
    }
    return ((void*)0);
}
