
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ PayloadContext ;


 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static void vp8_close_context(PayloadContext *vp8)
{
    ffio_free_dyn_buf(&vp8->data);
}
