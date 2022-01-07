
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int pos; int * buf_end; } ;
typedef TYPE_1__ AVIOContext ;


 int ffio_init_context (TYPE_1__*,int *,int,int ,int *,int ,int *,int *) ;
 int packetizer_read ;

__attribute__((used)) static void init_packetizer(AVIOContext *pb, uint8_t *buf, int len)
{
    ffio_init_context(pb, buf, len, 0, ((void*)0), packetizer_read, ((void*)0), ((void*)0));


    pb->pos = len;
    pb->buf_end = buf + len;
}
