
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int wr; int rd; int size; int cur_size; int * data; } ;
typedef TYPE_1__ esp_apptrace_rb_t ;



uint8_t *esp_apptrace_rb_produce(esp_apptrace_rb_t *rb, uint32_t size)
{
    uint8_t *ptr = rb->data + rb->wr;

    if (rb->rd <= rb->wr) {

        if (rb->wr + size >= rb->size) {
            if (rb->rd == 0) {
                return ((void*)0);
            }
            if (rb->wr + size == rb->size) {
                rb->wr = 0;
            } else {

                if (size > rb->rd - 1) {
                    return ((void*)0);
                }

                rb->cur_size = rb->wr;
                rb->wr = 0;
                ptr = rb->data;
                if (rb->rd == rb->cur_size) {
                    rb->rd = 0;
                    if (rb->cur_size < rb->size) {
                        rb->cur_size = rb->size;
                    }
                }
                rb->wr += size;
            }
        } else {
            rb->wr += size;
        }
    } else {

        if (size > rb->rd - rb->wr - 1) {
            return ((void*)0);
        }
        rb->wr += size;
    }
    return ptr;
}
