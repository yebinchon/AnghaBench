
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint16_t ;



uint16_t TEXT_deleteWhiteSpace(uint8_t *buf, uint16_t len) {
 int whiteSpaceCount=0;
 int i;

 for(i = 0; i < len; i++) {
  if(buf[i] == ' ' || buf[i] == '\t' || buf[i] == '\r' || buf[i] == '\n')
   whiteSpaceCount++;
  else
   buf[i-whiteSpaceCount] = buf[i];
 }
 return whiteSpaceCount;
}
