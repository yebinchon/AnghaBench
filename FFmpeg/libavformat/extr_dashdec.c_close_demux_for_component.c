
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
struct representation {TYPE_2__* ctx; TYPE_1__ pb; } ;
struct TYPE_4__ {int * pb; } ;
typedef int AVIOContext ;


 int av_freep (int *) ;
 int avformat_close_input (TYPE_2__**) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static void close_demux_for_component(struct representation *pls)
{

    av_freep(&pls->pb.buffer);
    memset(&pls->pb, 0x00, sizeof(AVIOContext));
    pls->ctx->pb = ((void*)0);
    avformat_close_input(&pls->ctx);
    pls->ctx = ((void*)0);
}
