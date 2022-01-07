
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int h; } ;
typedef TYPE_1__ AVIOInternal ;


 int ffurl_read (int ,int *,int) ;

__attribute__((used)) static int io_read_packet(void *opaque, uint8_t *buf, int buf_size)
{
    AVIOInternal *internal = opaque;
    return ffurl_read(internal->h, buf, buf_size);
}
