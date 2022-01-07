
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void sal_strcat(char *dest, const char *src)
{
 while(*dest)
  dest++;
 while(*src)
  *dest++ = *src++;
 *dest=0;
}
