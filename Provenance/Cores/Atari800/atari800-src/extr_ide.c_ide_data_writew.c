
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ide_device {int status; int* data_ptr; int* data_end; int (* end_transfer_func ) (struct ide_device*) ;} ;


 int DRQ_STAT ;
 scalar_t__ IDE_debug ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 int stub1 (struct ide_device*) ;

__attribute__((used)) static void ide_data_writew(struct ide_device *s, int addr, uint16_t val) {
    uint8_t *p;

    if (IDE_debug) fprintf(stderr, "data_writew: %d, %04x\n", addr, val);


    if (!(s->status & DRQ_STAT)) return;


    p = s->data_ptr;
    p[0] = val & 0xff;
    p[1] = val >> 8;
    p += 2;
    s->data_ptr = p;

    if (p >= s->data_end) s->end_transfer_func(s);
}
