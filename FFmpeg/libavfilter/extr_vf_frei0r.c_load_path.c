
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int ENOMEM ;
 int RTLD_LOCAL ;
 int RTLD_NOW ;
 int SLIBSUF ;
 char* av_asprintf (char*,char const*,char const*,int ) ;
 int av_free (char*) ;
 int av_log (int *,int ,char*,char*) ;
 void* dlopen (char*,int) ;

__attribute__((used)) static int load_path(AVFilterContext *ctx, void **handle_ptr, const char *prefix, const char *name)
{
    char *path = av_asprintf("%s%s%s", prefix, name, SLIBSUF);
    if (!path)
        return AVERROR(ENOMEM);
    av_log(ctx, AV_LOG_DEBUG, "Looking for frei0r effect in '%s'.\n", path);
    *handle_ptr = dlopen(path, RTLD_NOW|RTLD_LOCAL);
    av_free(path);
    return 0;
}
