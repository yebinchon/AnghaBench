
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP2X_BTN_PUSH ;
 int GP2X_BTN_VOL_DOWN ;
 int GP2X_BTN_VOL_UP ;
 int gpiodev ;
 int read (int ,int*,int) ;

__attribute__((used)) static int in_gp2x_get_wiz_bits(void)
{
 int r, value = 0;
 r = read(gpiodev, &value, 4);
 if (value & 0x02)
  value |= 0x05;
 if (value & 0x08)
  value |= 0x14;
 if (value & 0x20)
  value |= 0x50;
 if (value & 0x80)
  value |= 0x41;


 value &= 0x7ff55;
 if (value & (1 << 16))
  value |= 1 << GP2X_BTN_VOL_UP;
 if (value & (1 << 17))
  value |= 1 << GP2X_BTN_VOL_DOWN;
 if (value & (1 << 18))
  value |= 1 << GP2X_BTN_PUSH;
 value &= ~0x70000;

 return value;
}
