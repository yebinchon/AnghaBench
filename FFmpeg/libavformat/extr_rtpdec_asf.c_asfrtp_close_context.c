
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; int pktbuf; } ;
typedef TYPE_1__ PayloadContext ;


 int av_freep (int *) ;
 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static void asfrtp_close_context(PayloadContext *asf)
{
    ffio_free_dyn_buf(&asf->pktbuf);
    av_freep(&asf->buf);
}
