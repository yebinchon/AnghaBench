
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_device {void (* end_transfer_func ) (struct ide_device*) ;int status; int io_buffer; int data_end; int data_ptr; } ;


 int DRQ_STAT ;
 scalar_t__ IDE_debug ;
 scalar_t__ count ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void ide_transfer_stop(struct ide_device *s) {
    if (IDE_debug) fprintf(stderr, "transfer stop\n");

    s->end_transfer_func = ide_transfer_stop;
    s->data_ptr = s->io_buffer;
    s->data_end = s->io_buffer;
    s->status &= ~DRQ_STAT;
    count = 0;
}
