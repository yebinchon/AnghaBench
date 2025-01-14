
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* url; TYPE_1__* priv_data; } ;
struct TYPE_4__ {char const* master_pl_name; void* master_m3u8_url; } ;
typedef TYPE_1__ HLSContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 void* av_append_path_component (char const*,char const*) ;
 int av_basename (char const*) ;
 char* av_dirname (char*) ;
 int av_freep (char**) ;
 void* av_strdup (char const*) ;
 scalar_t__ av_stristr (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int update_master_pl_info(AVFormatContext *s)
{
    HLSContext *hls = s->priv_data;
    const char *dir;
    char *fn1= ((void*)0), *fn2 = ((void*)0);
    int ret = 0;

    fn1 = av_strdup(s->url);
    dir = av_dirname(fn1);





    if (dir && av_stristr(av_basename(dir), "%v")) {
        fn2 = av_strdup(dir);
        dir = av_dirname(fn2);
    }

    if (dir && strcmp(dir, "."))
        hls->master_m3u8_url = av_append_path_component(dir, hls->master_pl_name);
    else
        hls->master_m3u8_url = av_strdup(hls->master_pl_name);

    if (!hls->master_m3u8_url) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

fail:
    av_freep(&fn1);
    av_freep(&fn2);

    return ret;
}
