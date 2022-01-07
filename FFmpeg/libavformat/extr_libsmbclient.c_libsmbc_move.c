
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
 int errno ;
 int libsmbc_close (TYPE_1__*) ;
 int libsmbc_connect (TYPE_1__*) ;
 int smbc_rename (int ,int ) ;

__attribute__((used)) static int libsmbc_move(URLContext *h_src, URLContext *h_dst)
{
    LIBSMBContext *libsmbc = h_src->priv_data;
    int ret;

    if ((ret = libsmbc_connect(h_src)) < 0)
        goto cleanup;

    if ((libsmbc->dh = smbc_rename(h_src->filename, h_dst->filename)) < 0) {
        ret = AVERROR(errno);
        goto cleanup;
    }

    ret = 0;

cleanup:
    libsmbc_close(h_src);
    return ret;
}
