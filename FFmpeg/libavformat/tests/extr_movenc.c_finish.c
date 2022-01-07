
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pb; } ;


 int av_write_trailer (TYPE_1__*) ;
 int avformat_free_context (TYPE_1__*) ;
 int avio_context_free (int *) ;
 TYPE_1__* ctx ;

__attribute__((used)) static void finish(void)
{
    av_write_trailer(ctx);
    avio_context_free(&ctx->pb);
    avformat_free_context(ctx);
    ctx = ((void*)0);
}
