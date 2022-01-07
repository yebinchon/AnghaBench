
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ PayloadContext ;


 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static void h263_close_context(PayloadContext *data)
{
    ffio_free_dyn_buf(&data->buf);
}
