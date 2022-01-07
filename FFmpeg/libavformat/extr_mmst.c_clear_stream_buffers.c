
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_buffer; int read_in_ptr; scalar_t__ remaining_in_len; } ;
typedef TYPE_1__ MMSContext ;



__attribute__((used)) static void clear_stream_buffers(MMSContext *mms)
{
    mms->remaining_in_len = 0;
    mms->read_in_ptr = mms->in_buffer;
}
