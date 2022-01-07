
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ide_device {int* upperhalf; int cycle; int data; int do_8bit; } ;


 int ide_data_writew (struct ide_device*,int ,int) ;
 int ide_ioport_write (struct ide_device*,int,int) ;

__attribute__((used)) static void mmio_ide_write(struct ide_device *s, int addr, uint8_t val) {
    addr &= 15;

    if (addr == 0) {
        if (!s->do_8bit) {
            ide_data_writew(s, 0, s->upperhalf[0] | val);
            return;
        }
        if (!s->cycle) {
            s->data = val & 0xff;
        } else {
            ide_data_writew(s, 0, s->data | (val << 8));
        }
        s->cycle = !s->cycle;
    } else if (addr >= 8) {
        s->upperhalf[addr-8] = val << 8;
    } else {
        ide_ioport_write(s, addr, s->upperhalf[addr] | val);
    }
}
