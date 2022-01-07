
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MIN (size_t,int) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlcpy (char*,char const*,size_t) ;
 void* strlen (char const*) ;

__attribute__((used)) static const char* get_path_from_uri(char *dest, const char *base_path, const char *uri, size_t destsize)
{
    const size_t base_pathlen = strlen(base_path);
    size_t pathlen = strlen(uri);

    const char *quest = strchr(uri, '?');
    if (quest) {
        pathlen = MIN(pathlen, quest - uri);
    }
    const char *hash = strchr(uri, '#');
    if (hash) {
        pathlen = MIN(pathlen, hash - uri);
    }

    if (base_pathlen + pathlen + 1 > destsize) {

        return ((void*)0);
    }


    strcpy(dest, base_path);
    strlcpy(dest + base_pathlen, uri, pathlen + 1);


    return dest + base_pathlen;
}
