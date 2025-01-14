
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msnprintf (char*,int,char*,unsigned char const) ;

char *hexdump(const unsigned char *buffer, size_t len)
{
  static char dump[200 * 3 + 1];
  char *p = dump;
  size_t i;
  if(len > 200)
    return ((void*)0);
  for(i = 0; i<len; i++, p += 3)
    msnprintf(p, 4, "%02x ", buffer[i]);
  return dump;
}
