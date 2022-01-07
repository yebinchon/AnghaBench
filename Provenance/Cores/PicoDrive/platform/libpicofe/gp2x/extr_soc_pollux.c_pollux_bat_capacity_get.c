
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int magic_val ;


 scalar_t__ battdev ;
 int read (scalar_t__,unsigned short*,int) ;

__attribute__((used)) static int pollux_bat_capacity_get(void)
{
 unsigned short magic_val = 0;

 if (battdev < 0)
  return -1;
 if (read(battdev, &magic_val, sizeof(magic_val)) != sizeof(magic_val))
  return -1;
 switch (magic_val) {
 default:
 case 1: return 100;
 case 2: return 66;
 case 3: return 40;
 case 4: return 0;
 }
}
