
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_5__ {scalar_t__ eof_reached; } ;
typedef TYPE_1__ AVIOContext ;
typedef int AVFormatContext ;
typedef int AVDictionary ;


 int AVERROR_PROTOCOL_NOT_FOUND ;
 int av_assert0 (int *) ;
 int ff_format_io_close (int *,TYPE_1__**) ;
 int ff_http_do_new_request2 (int *,char const*,int **) ;
 int * ffio_geturlcontext (TYPE_1__*) ;

__attribute__((used)) static int open_url_keepalive(AVFormatContext *s, AVIOContext **pb,
                              const char *url, AVDictionary **options)
{

    return AVERROR_PROTOCOL_NOT_FOUND;
}
