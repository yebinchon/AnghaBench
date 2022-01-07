
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static int ecd_find_sig (char *buffer, int buflen, int *offset)
{
 static char ecdsig[] = { 'P', 'K', 0x05, 0x06 };
 int i;
 for (i=buflen-22; i>=0; i--) {
  if (memcmp(buffer+i, ecdsig, 4) == 0) {
   *offset = i;
   return 1;
  }
 }
 return 0;
}
