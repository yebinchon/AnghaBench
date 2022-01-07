
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer; } ;
typedef TYPE_1__ AVIOContext ;


 int av_freep (int *) ;
 int avio_context_free (TYPE_1__**) ;

__attribute__((used)) static void close_null_ctxp(AVIOContext **pb)
{
    av_freep(&(*pb)->buffer);
    avio_context_free(pb);
}
