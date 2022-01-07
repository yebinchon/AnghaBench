
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



int TEXT_strcpy(uint8_t *buf, const char *inStr) {
 int i = 0;
 while(inStr[i] != 0) {
  buf[i] = inStr[i];
  i++;
 }
 return i;
}
