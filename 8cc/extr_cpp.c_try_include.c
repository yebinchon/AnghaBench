
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char*,char*) ;
 int format (char*,char*,char*) ;
 char* fullpath (int ) ;
 scalar_t__ guarded (char*) ;
 int make_file (int *,char*) ;
 scalar_t__ map_get (int ,char*) ;
 int map_put (int ,char*,void*) ;
 int once ;
 int stream_push (int ) ;

__attribute__((used)) static bool try_include(char *dir, char *filename, bool isimport) {
    char *path = fullpath(format("%s/%s", dir, filename));
    if (map_get(once, path))
        return 1;
    if (guarded(path))
        return 1;
    FILE *fp = fopen(path, "r");
    if (!fp)
        return 0;
    if (isimport)
        map_put(once, path, (void *)1);
    stream_push(make_file(fp, path));
    return 1;
}
