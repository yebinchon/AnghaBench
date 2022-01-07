
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



uint8_t TEXT_parseInt(uint8_t *buf, int *result) {
 uint8_t offset = 0;
 bool negative = 0;
 if(buf[0] == '-') {
  negative = 1;
  offset++;
 }
 *result = 0;
 while(buf[offset] >= '0' && buf[offset] <= '9') {
  *result *= 10;
  *result += buf[offset++] - '0';
 }
 if(negative)
  *result *= -1;
 return offset;
}
