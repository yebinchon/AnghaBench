
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 char* av_basename (char const*) ;
 char* av_dirname (char*) ;
 int av_freep (char**) ;
 int av_log (int *,int ,char*,char const*) ;
 char* av_strdup (char const*) ;
 scalar_t__ av_stristr (char const*,char*) ;

__attribute__((used)) static int validate_name(int nb_vs, const char *fn)
{
    const char *filename, *subdir_name;
    char *fn_dup = ((void*)0);
    int ret = 0;

    if (!fn) {
        ret = AVERROR(EINVAL);
        goto fail;
    }

    fn_dup = av_strdup(fn);
    filename = av_basename(fn);
    subdir_name = av_dirname(fn_dup);

    if (nb_vs > 1 && !av_stristr(filename, "%v") && !av_stristr(subdir_name, "%v")) {
        av_log(((void*)0), AV_LOG_ERROR, "More than 1 variant streams are present, %%v is expected "
               "either in the filename or in the sub-directory name of file %s\n", fn);
        ret = AVERROR(EINVAL);
        goto fail;
    }

    if (av_stristr(filename, "%v") && av_stristr(subdir_name, "%v")) {
        av_log(((void*)0), AV_LOG_ERROR, "%%v is expected either in the filename or "
               "in the sub-directory name of file %s, but only in one of them\n", fn);
        ret = AVERROR(EINVAL);
        goto fail;
    }

fail:
    av_freep(&fn_dup);
    return ret;
}
