
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int au_headers; } ;
typedef TYPE_1__ PayloadContext ;


 int av_freep (int *) ;

__attribute__((used)) static void close_context(PayloadContext *data)
{
    av_freep(&data->au_headers);
    av_freep(&data->mode);
}
