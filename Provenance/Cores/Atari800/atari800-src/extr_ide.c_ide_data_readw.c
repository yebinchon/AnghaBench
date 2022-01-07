
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ide_device {int status; int* data_ptr; int* data_end; int (* end_transfer_func ) (struct ide_device*) ;} ;


 int DRQ_STAT ;
 scalar_t__ IDE_debug ;
 int count ;
 int fprintf (int ,char*,int,int,int) ;
 int stderr ;
 int stub1 (struct ide_device*) ;

__attribute__((used)) static uint16_t ide_data_readw(struct ide_device *s, int addr) {
    uint8_t *p;
    uint16_t ret;


    if (!(s->status & DRQ_STAT)) return 0;


    p = s->data_ptr;
    ret = p[0];
    ret |= p[1] << 8;
    p += 2;
    s->data_ptr = p;

    if (IDE_debug) {
        fprintf(stderr, "data_readw: %d, %04x (count: %d)\n", addr, ret, count);
        count++;
        count &= 0xff;
    }

    if (p >= s->data_end) s->end_transfer_func(s);

    return ret;
}
