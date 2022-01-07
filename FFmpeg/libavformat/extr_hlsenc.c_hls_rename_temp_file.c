
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* url; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (char**) ;
 char* av_strdup (char*) ;
 int ff_rename (char*,char*,TYPE_1__*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int hls_rename_temp_file(AVFormatContext *s, AVFormatContext *oc)
{
    size_t len = strlen(oc->url);
    char *final_filename = av_strdup(oc->url);
    int ret;

    if (!final_filename)
        return AVERROR(ENOMEM);
    final_filename[len-4] = '\0';
    ret = ff_rename(oc->url, final_filename, s);
    oc->url[len-4] = '\0';
    av_freep(&final_filename);
    return ret;
}
