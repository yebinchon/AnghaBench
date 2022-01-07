
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ encrypt; scalar_t__ key_info_file; int http_persistent; } ;
typedef TYPE_1__ HLSContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVIO_FLAG_WRITE ;
 int av_assert0 (int *) ;
 int avio_flush (int *) ;
 int ff_format_io_close (TYPE_2__*,int **) ;
 int ff_http_get_shutdown_status (int *) ;
 int ff_is_http_proto (char*) ;
 int * ffio_geturlcontext (int *) ;
 int ffurl_shutdown (int *,int ) ;

__attribute__((used)) static int hlsenc_io_close(AVFormatContext *s, AVIOContext **pb, char *filename)
{
    HLSContext *hls = s->priv_data;
    int http_base_proto = filename ? ff_is_http_proto(filename) : 0;
    int ret = 0;
    if (!*pb)
        return ret;
    if (!http_base_proto || !hls->http_persistent || hls->key_info_file || hls->encrypt) {
        ff_format_io_close(s, pb);
    }
    return ret;
}
