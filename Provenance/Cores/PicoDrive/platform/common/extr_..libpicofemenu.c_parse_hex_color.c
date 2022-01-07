
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strtoul (char*,char**,int) ;

__attribute__((used)) static int parse_hex_color(char *buff)
{
 char *endp = buff;
 int t = (int) strtoul(buff, &endp, 16);
 if (endp != buff)



  return ((t>>8)&0xf800) | ((t>>5)&0x07e0) | ((t>>3)&0x1f);

 return -1;
}
