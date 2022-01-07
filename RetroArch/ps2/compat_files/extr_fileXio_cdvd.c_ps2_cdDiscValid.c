
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceCdGetDiskType () ;

__attribute__((used)) static int ps2_cdDiscValid(void)
{
 int cdmode = sceCdGetDiskType();

 switch (cdmode) {
  case 130:
  case 129:
  case 133:
  case 132:
  case 131:
  case 141:
  case 136:
   return 1;
  case 134:
  case 140:
  case 139:
  case 137:
  case 138:
  case 128:
  case 135:
  default:
   return 0;
 }
}
