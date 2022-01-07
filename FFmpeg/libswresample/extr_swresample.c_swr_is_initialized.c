
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ch_count; } ;
struct SwrContext {TYPE_1__ in_buffer; } ;



int swr_is_initialized(struct SwrContext *s) {
    return !!s->in_buffer.ch_count;
}
