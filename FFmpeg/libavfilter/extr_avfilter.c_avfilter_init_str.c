
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char const* key; } ;
struct TYPE_10__ {TYPE_1__* filter; } ;
struct TYPE_9__ {int name; int priv_class; } ;
typedef TYPE_2__ AVFilterContext ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_dict_free (int **) ;
 TYPE_3__* av_dict_get (int *,char*,int *,int ) ;
 int av_freep (char**) ;
 int av_log (TYPE_2__*,int ,char*,char const*,...) ;
 char* av_strdup (char const*) ;
 int avfilter_init_dict (TYPE_2__*,int **) ;
 int memmove (char*,char*,int) ;
 int process_options (TYPE_2__*,int **,char const*) ;
 char* strchr (char*,char) ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;

int avfilter_init_str(AVFilterContext *filter, const char *args)
{
    AVDictionary *options = ((void*)0);
    AVDictionaryEntry *e;
    int ret = 0;

    if (args && *args) {
        if (!filter->filter->priv_class) {
            av_log(filter, AV_LOG_ERROR, "This filter does not take any "
                   "options, but options were provided: %s.\n", args);
            return AVERROR(EINVAL);
        }
        {
            ret = process_options(filter, &options, args);
            if (ret < 0)
                goto fail;
        }
    }

    ret = avfilter_init_dict(filter, &options);
    if (ret < 0)
        goto fail;

    if ((e = av_dict_get(options, "", ((void*)0), AV_DICT_IGNORE_SUFFIX))) {
        av_log(filter, AV_LOG_ERROR, "No such option: %s.\n", e->key);
        ret = AVERROR_OPTION_NOT_FOUND;
        goto fail;
    }

fail:
    av_dict_free(&options);

    return ret;
}
