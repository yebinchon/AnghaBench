
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int filename; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int dh; } ;
typedef TYPE_2__ LIBSMBContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int errno ;
 int libsmbc_close (TYPE_1__*) ;
 int libsmbc_connect (TYPE_1__*) ;
 int smbc_opendir (int ) ;
 int strerror (int ) ;

__attribute__((used)) static int libsmbc_open_dir(URLContext *h)
{
    LIBSMBContext *libsmbc = h->priv_data;
    int ret;

    if ((ret = libsmbc_connect(h)) < 0)
        goto fail;

    if ((libsmbc->dh = smbc_opendir(h->filename)) < 0) {
        ret = AVERROR(errno);
        av_log(h, AV_LOG_ERROR, "Error opening dir: %s\n", strerror(errno));
        goto fail;
    }

    return 0;

  fail:
    libsmbc_close(h);
    return ret;
}
