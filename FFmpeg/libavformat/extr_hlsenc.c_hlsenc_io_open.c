
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_7__ {int (* io_open ) (TYPE_2__*,int **,char*,int ,int **) ;TYPE_1__* priv_data; } ;
struct TYPE_6__ {int http_persistent; } ;
typedef TYPE_1__ HLSContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef int AVDictionary ;


 int AVERROR_MUXER_NOT_FOUND ;
 int AVIO_FLAG_WRITE ;
 int av_assert0 (int *) ;
 int ff_format_io_close (TYPE_2__*,int **) ;
 int ff_http_do_new_request (int *,char*) ;
 int ff_is_http_proto (char*) ;
 int * ffio_geturlcontext (int *) ;
 int stub1 (TYPE_2__*,int **,char*,int ,int **) ;

__attribute__((used)) static int hlsenc_io_open(AVFormatContext *s, AVIOContext **pb, char *filename,
                          AVDictionary **options)
{
    HLSContext *hls = s->priv_data;
    int http_base_proto = filename ? ff_is_http_proto(filename) : 0;
    int err = AVERROR_MUXER_NOT_FOUND;
    if (!*pb || !http_base_proto || !hls->http_persistent) {
        err = s->io_open(s, pb, filename, AVIO_FLAG_WRITE, options);
    }
    return err;
}
