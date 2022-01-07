
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum PathMatch { ____Placeholder_PathMatch } PathMatch ;
struct TYPE_2__ {char const* pathname; } ;


 TYPE_1__ CachedDirInfo ;
 int MATCH ;
 int NOT_MATCH ;
 int SUBDIR ;
 int strlen (char const*) ;

enum PathMatch ComparePath(const char *path)
{
    int length;
    int i;

    length = strlen(CachedDirInfo.pathname);

    for (i = 0; i < length; i++) {

        if (path[i] != CachedDirInfo.pathname[i]) {

            if ((path[i] == '/') || (path[i] == '\\')) {
                if ((CachedDirInfo.pathname[i] == '/') || (CachedDirInfo.pathname[i] == '\\')) {
                    continue;
                }
            }


            return NOT_MATCH;
        }
    }




    if (path[length] == 0)
        return MATCH;



    if ((path[length] == '/') || (path[length] == '\\'))
        return SUBDIR;
    else
        return NOT_MATCH;
}
