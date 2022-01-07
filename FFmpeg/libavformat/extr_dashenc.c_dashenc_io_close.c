
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int http_persistent; } ;
typedef TYPE_1__ DASHContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVIO_FLAG_WRITE ;
 int av_assert0 (int *) ;
 int avio_flush (int *) ;
 int ff_format_io_close (TYPE_2__*,int **) ;
 int ff_is_http_proto (char*) ;
 int * ffio_geturlcontext (int *) ;
 int ffurl_shutdown (int *,int ) ;

__attribute__((used)) static void dashenc_io_close(AVFormatContext *s, AVIOContext **pb, char *filename) {
    DASHContext *c = s->priv_data;
    int http_base_proto = filename ? ff_is_http_proto(filename) : 0;

    if (!*pb)
        return;

    if (!http_base_proto || !c->http_persistent) {
        ff_format_io_close(s, pb);







    }
}
