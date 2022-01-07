
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ rd; scalar_t__ wr; scalar_t__ cur_size; } ;
typedef TYPE_1__ esp_apptrace_rb_t ;



uint32_t esp_apptrace_rb_read_size_get(esp_apptrace_rb_t *rb)
{
    uint32_t size = 0;
    if (rb->rd <= rb->wr) {

        size = rb->wr - rb->rd;
    } else {

        size = rb->cur_size - rb->rd;
    }
    return size;
}
