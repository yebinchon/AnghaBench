
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ringbuf_t ;
struct TYPE_3__ {int buf; int tail; int head; } ;



void ringbuf_reset(ringbuf_t rb)
{
 rb ->head = rb->tail = rb->buf;
}
