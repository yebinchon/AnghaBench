
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ide_device {int dummy; } ;


 struct ide_device device ;
 int mmio_ide_write (struct ide_device*,int ,int ) ;

void IDE_PutByte(uint16_t addr, uint8_t val) {
    struct ide_device *s = &device;
    mmio_ide_write(s, addr, val);
}
