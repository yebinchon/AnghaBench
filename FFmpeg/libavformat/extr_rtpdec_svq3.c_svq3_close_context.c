
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pktbuf; } ;
typedef TYPE_1__ PayloadContext ;


 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static void svq3_close_context(PayloadContext *sv)
{
    ffio_free_dyn_buf(&sv->pktbuf);
}
