
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int temp_filename; int rtmp; } ;
typedef int RTMP ;
typedef TYPE_2__ LibRTMPContext ;


 int RTMP_Close (int *) ;
 int av_freep (int *) ;

__attribute__((used)) static int rtmp_close(URLContext *s)
{
    LibRTMPContext *ctx = s->priv_data;
    RTMP *r = &ctx->rtmp;

    RTMP_Close(r);
    av_freep(&ctx->temp_filename);
    return 0;
}
