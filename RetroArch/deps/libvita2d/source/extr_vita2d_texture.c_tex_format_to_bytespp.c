
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceGxmTextureFormat ;
__attribute__((used)) static int tex_format_to_bytespp(SceGxmTextureFormat format)
{
 switch (format & 0x9f000000U) {
 case 132:
 case 140:
 case 143:
  return 1;
 case 134:
 case 131:
 case 136:
 case 133:
 case 141:
 case 130:
 case 139:
  return 2;
 case 129:
 case 138:
  return 3;
 case 128:
 case 137:
 case 144:
 case 135:
 case 142:
 default:
  return 4;
 }
}
