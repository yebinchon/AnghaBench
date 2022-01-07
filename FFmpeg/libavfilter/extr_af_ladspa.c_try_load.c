
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_LOCAL ;
 int RTLD_NOW ;
 char* av_asprintf (char*,char const*,char const*) ;
 int av_free (char*) ;
 void* dlopen (char*,int) ;

__attribute__((used)) static void *try_load(const char *dir, const char *soname)
{
    char *path = av_asprintf("%s/%s.so", dir, soname);
    void *ret = ((void*)0);

    if (path) {
        ret = dlopen(path, RTLD_LOCAL|RTLD_NOW);
        av_free(path);
    }

    return ret;
}
