
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int fd; } ;
typedef TYPE_2__ LIBSMBContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int errno ;
 int smbc_read (int ,unsigned char*,int) ;
 int strerror (int ) ;

__attribute__((used)) static int libsmbc_read(URLContext *h, unsigned char *buf, int size)
{
    LIBSMBContext *libsmbc = h->priv_data;
    int bytes_read;

    if ((bytes_read = smbc_read(libsmbc->fd, buf, size)) < 0) {
        int ret = AVERROR(errno);
        av_log(h, AV_LOG_ERROR, "Read error: %s\n", strerror(errno));
        return ret;
    }

    return bytes_read ? bytes_read : AVERROR_EOF;
}
