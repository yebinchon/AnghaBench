
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void write32_le(const int value, unsigned char *buffer)
{
  buffer[0] = (char)(value & 0x000000FF);
  buffer[1] = (char)((value & 0x0000FF00) >> 8);
  buffer[2] = (char)((value & 0x00FF0000) >> 16);
  buffer[3] = (char)((value & 0xFF000000) >> 24);
}
