
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int errbuf ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ ignore_io_errors; } ;
typedef TYPE_1__ DASHContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_ERROR_MAX_STRING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_log (TYPE_2__*,int ,char*,char*,char*) ;
 int av_strerror (int,char*,int) ;

__attribute__((used)) static int handle_io_open_error(AVFormatContext *s, int err, char *url) {
    DASHContext *c = s->priv_data;
    char errbuf[AV_ERROR_MAX_STRING_SIZE];
    av_strerror(err, errbuf, sizeof(errbuf));
    av_log(s, c->ignore_io_errors ? AV_LOG_WARNING : AV_LOG_ERROR,
           "Unable to open %s for writing: %s\n", url, errbuf);
    return c->ignore_io_errors ? 0 : err;
}
