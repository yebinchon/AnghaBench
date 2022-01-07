
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ide_device {int hob_feature; int error; int hob_nsector; int nsector; int hob_sector; int sector; int hob_lcyl; int lcyl; int hob_hcyl; int hcyl; int select; int status; } ;


 scalar_t__ IDE_debug ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

__attribute__((used)) static uint32_t ide_ioport_read(struct ide_device *s, uint16_t addr) {
    int ret = 0xff, hob = 0;

    addr &= 7;



    switch(addr) {
    case 0: break;
    case 1: ret = hob ? s->hob_feature : s->error; break;
    case 2: ret = hob ? s->hob_nsector : s->nsector & 0xff; break;
    case 3: ret = hob ? s->hob_sector : s->sector; break;
    case 4: ret = hob ? s->hob_lcyl : s->lcyl; break;
    case 5: ret = hob ? s->hob_hcyl : s->hcyl; break;
    case 6: ret = s->select; break;
    default:
    case 7: ret = s->status; break;
    }

    if (IDE_debug)
        fprintf(stderr, "ide: get: addr: %04x, ret: %02x\n", addr, ret);

    return ret;
}
