
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ide_device {int status; scalar_t__ cycle; int * data_end; int * data_ptr; int * end_transfer_func; } ;
typedef int EndTransferFunc ;


 int DRQ_STAT ;
 int ERR_STAT ;
 scalar_t__ IDE_debug ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void ide_transfer_start(struct ide_device *s, uint8_t *buf, int size,
                                       EndTransferFunc *end_transfer_func) {
    if (IDE_debug) fprintf(stderr, "transfer start\n");

    s->end_transfer_func = end_transfer_func;
    s->data_ptr = buf;
    s->data_end = buf + size;
    s->cycle = 0;

    if (!(s->status & ERR_STAT)) s->status |= DRQ_STAT;
}
