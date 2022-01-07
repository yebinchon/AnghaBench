
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_device {int* data_ptr; int* data_end; int* io_buffer; } ;


 scalar_t__ count ;

__attribute__((used)) static void ide_dummy_transfer_stop(struct ide_device *s) {
    s->data_ptr = s->data_end = s->io_buffer;
    s->io_buffer[0] = s->io_buffer[1] =
    s->io_buffer[2] = s->io_buffer[3] = 0xff;
    count = 0;
}
