
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ide_device {int dummy; } ;


 struct ide_device device ;
 int mmio_ide_read (struct ide_device*,int ) ;

uint8_t IDE_GetByte(uint16_t addr, int no_side_effects) {
    struct ide_device *s = &device;
    return mmio_ide_read(s, addr);
}
