
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int rd; scalar_t__ wr; scalar_t__ cur_size; scalar_t__ size; int * data; } ;
typedef TYPE_1__ esp_apptrace_rb_t ;



uint8_t *esp_apptrace_rb_consume(esp_apptrace_rb_t *rb, uint32_t size)
{
    uint8_t *ptr = rb->data + rb->rd;
    if (rb->rd <= rb->wr) {

        if (rb->rd + size > rb->wr) {
            return ((void*)0);
        }
        rb->rd += size;
    } else {

        if (rb->rd + size > rb->cur_size) {
            return ((void*)0);
        } else if (rb->rd + size == rb->cur_size) {

            if (rb->cur_size < rb->size) {
                rb->cur_size = rb->size;
            }
            rb->rd = 0;
        } else {
            rb->rd += size;
        }
    }
    return ptr;
}
