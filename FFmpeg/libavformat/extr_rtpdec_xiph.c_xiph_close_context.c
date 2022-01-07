
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int split_buf; int fragment; } ;
typedef TYPE_1__ PayloadContext ;


 int av_freep (int *) ;
 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static void xiph_close_context(PayloadContext * data)
{
    ffio_free_dyn_buf(&data->fragment);
    av_freep(&data->split_buf);
}
