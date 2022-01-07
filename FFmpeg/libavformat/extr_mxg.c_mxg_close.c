
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AVFormatContext {TYPE_1__* priv_data; } ;
struct TYPE_2__ {int buffer; } ;
typedef TYPE_1__ MXGContext ;


 int av_freep (int *) ;

__attribute__((used)) static int mxg_close(struct AVFormatContext *s)
{
    MXGContext *mxg = s->priv_data;
    av_freep(&mxg->buffer);
    return 0;
}
