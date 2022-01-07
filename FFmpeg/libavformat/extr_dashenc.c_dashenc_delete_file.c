
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int errbuf ;
struct TYPE_6__ {int * priv_data; } ;
typedef int DASHContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_ERROR_MAX_STRING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOENT ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_log (TYPE_1__*,int ,char*,char*,...) ;
 int av_strerror (int,char*,int) ;
 int avpriv_io_delete (char*) ;
 scalar_t__ dashenc_io_open (TYPE_1__*,int **,char*,int **) ;
 int ff_format_io_close (TYPE_1__*,int **) ;
 int ff_is_http_proto (char*) ;
 int set_http_options (int **,int *) ;

__attribute__((used)) static void dashenc_delete_file(AVFormatContext *s, char *filename) {
    DASHContext *c = s->priv_data;
    int http_base_proto = ff_is_http_proto(filename);

    if (http_base_proto) {
        AVIOContext *out = ((void*)0);
        AVDictionary *http_opts = ((void*)0);

        set_http_options(&http_opts, c);
        av_dict_set(&http_opts, "method", "DELETE", 0);

        if (dashenc_io_open(s, &out, filename, &http_opts) < 0) {
            av_log(s, AV_LOG_ERROR, "failed to delete %s\n", filename);
        }

        av_dict_free(&http_opts);
        ff_format_io_close(s, &out);
    } else {
        int res = avpriv_io_delete(filename);
        if (res < 0) {
            char errbuf[AV_ERROR_MAX_STRING_SIZE];
            av_strerror(res, errbuf, sizeof(errbuf));
            av_log(s, (res == AVERROR(ENOENT) ? AV_LOG_WARNING : AV_LOG_ERROR), "failed to delete %s: %s\n", filename, errbuf);
        }
    }
}
