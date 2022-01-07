
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ide_device {int bus_status; int hob_feature; int feature; int hob_nsector; int nsector; int hob_sector; int sector; int hob_lcyl; int lcyl; int hob_hcyl; int hcyl; int select; int bus_unit; } ;


 int BUSY_STAT ;
 int DRQ_STAT ;
 scalar_t__ IDE_debug ;
 int fprintf (int ,char*,int,...) ;
 int ide_clear_hob (struct ide_device*) ;
 int ide_command (struct ide_device*,int) ;
 int ide_transfer_stop (struct ide_device*) ;
 int stderr ;

__attribute__((used)) static void ide_ioport_write(struct ide_device *s, uint16_t addr, uint8_t val){
    if (IDE_debug)
        fprintf(stderr, "ide: put: addr: %04x, byte: %02x\n", addr, val);

    addr &= 7;


    if (addr != 7 && s->bus_status & (BUSY_STAT|DRQ_STAT))
        return;

    switch(addr) {
    case 0: break;
    case 1:
        ide_clear_hob(s);
        s->hob_feature = s->feature;
        s->feature = val;
        break;
    case 2:
        ide_clear_hob(s);
        s->hob_nsector = s->nsector;
        s->nsector = val;
        break;
    case 3:
        ide_clear_hob(s);
        s->hob_sector = s->sector;
        s->sector = val;
        break;
    case 4:
        ide_clear_hob(s);
        s->hob_lcyl = s->lcyl;
        s->lcyl = val;
        break;
    case 5:
        ide_clear_hob(s);
        s->hob_hcyl = s->hcyl;
        s->hcyl = val;
        break;
    case 6:

        s->select = (val & ~0x10) | 0xa0;
        s->bus_unit = (val>>4)&1;
        break;
    default:
    case 7:
        if (IDE_debug) fprintf(stderr, "\tIDE: CMD=%02x\n", val);

        ide_transfer_stop(s);






        ide_command(s, val);

        break;
    }
}
