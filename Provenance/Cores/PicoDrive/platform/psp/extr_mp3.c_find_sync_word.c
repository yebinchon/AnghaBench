
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_sync_word(unsigned char *data, int len)
{
 int i;
 for (i = 0; i < len-1; i++)
 {
  if ( data[i+0] != 0xff) continue;
  if ((data[i+1] & 0xfe) == 0xfa) return i;
  i++;
 }
 return -1;
}
