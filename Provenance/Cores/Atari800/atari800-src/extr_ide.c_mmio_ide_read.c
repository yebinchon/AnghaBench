
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ide_device {int* upperhalf; int cycle; int data; int do_8bit; } ;


 void* ide_data_readw (struct ide_device*,int ) ;
 int ide_ioport_read (struct ide_device*,int) ;

__attribute__((used)) static uint8_t mmio_ide_read(struct ide_device *s, int addr) {
    uint16_t ret;

    addr &= 15;

    if (addr == 0) {
        if (!s->do_8bit) {
            ret = ide_data_readw(s, 0);
            s->upperhalf[0] = ret & 0xff00;
            return ret;
        }
        if (!s->cycle) {
            s->data = ide_data_readw(s, 0);
            ret = s->data & 0xff;
        } else {
            ret = s->data >> 8;
        }
        s->cycle = !s->cycle;
        return ret;
    } else if (addr >= 8) {
        return s->upperhalf[addr-8] >> 8;
    } else {
        ret = ide_ioport_read(s, addr);
        s->upperhalf[addr] = ret & 0xff00;
        return ret;
    }
}
