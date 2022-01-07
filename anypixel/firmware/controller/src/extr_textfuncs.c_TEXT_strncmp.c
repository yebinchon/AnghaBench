
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const uint8_t ;
typedef int uint16_t ;



int TEXT_strncmp(uint8_t *buf, const char *inStr, uint16_t num) {
 int i;
 int retval;
 for(i = 0; i < num; i++) {
  retval = buf[i] - inStr[i];
  if(retval != 0)
   return retval;
 }
 return 0;
}
