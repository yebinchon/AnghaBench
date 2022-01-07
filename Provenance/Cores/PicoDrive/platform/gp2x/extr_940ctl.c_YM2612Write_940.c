
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_5__ {scalar_t__ pal; } ;
struct TYPE_8__ {TYPE_1__ m; } ;
struct TYPE_7__ {int EmuOpt; } ;
struct TYPE_6__ {int* writebuff0; int* writebuff1; scalar_t__ writebuffsel; } ;


 TYPE_4__ Pico ;
 unsigned int ST_address ;
 int addr_A1 ;
 TYPE_3__ currentConfig ;
 int printf (char*,unsigned int,unsigned int) ;
 TYPE_2__* shared_ctl ;
 int writebuff_ptr ;

int YM2612Write_940(unsigned int a, unsigned int v, int scanline)
{
 int upd = 1;

 a &= 3;



 switch (a)
 {
  case 0:
   if (addr_A1 == 0 && ST_address == v)
    return 0;
   ST_address = v;
   addr_A1 = 0;

   if (v == 0x24 || v == 0x25 || v == 0x26 || v == 0x2a)
    return 0;
   upd = 0;
   break;

  case 2:
   if (addr_A1 == 1 && ST_address == v)
    return 0;
   ST_address = v;
   addr_A1 = 1;
   upd = 0;
   break;
 }



 if (currentConfig.EmuOpt & 4)
 {
  UINT16 *writebuff = shared_ctl->writebuffsel ? shared_ctl->writebuff0 : shared_ctl->writebuff1;


  if (upd && !(writebuff_ptr & 0x80000000) && scanline < 224)
  {
   int mid = Pico.m.pal ? 68 : 93;
   if (scanline > mid) {

    writebuff[writebuff_ptr++ & 0xffff] = 0xfffe;
    writebuff_ptr |= 0x80000000;

   }
  }


  if ((writebuff_ptr&0xffff) < 2047) {
   writebuff[writebuff_ptr++ & 0xffff] = (a<<8)|v;
  } else {
   printf("warning: writebuff_ptr > 2047 ([%i] %02x)\n", a, v);
  }
 }

 return 0;
}
