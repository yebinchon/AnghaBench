
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int int16_t ;



uint16_t TEXT_numToString(uint8_t *buf, int32_t value, int16_t bufSize, uint8_t minLen, uint8_t padChar, bool padBeforeSign) {
 uint8_t work[11];
 uint8_t count = 0;
 bool negative = 0;
 uint8_t i;

 if(minLen > bufSize || minLen > 11)
  return 0;

 if(value < 0) {
  negative = 1;
  value *= -1;
 }

 do {
  work[count++] = (value % 10) + '0';
  value /= 10;
 } while(value != 0);

 if(negative) {
  if(count+1 > bufSize)
   return 0;
  if(!padBeforeSign) {
   while( count < (minLen-1) )
    work[count++] = padChar;
   work[count++] = '-';
  } else {
   work[count++] = '-';
  }
 }

 while( count < minLen )
  work[count++] = padChar;

 if(count > bufSize)
  return 0;

 for( i = 0; i < count; i++)
  buf[i] = work[count-1-i];

 return count;
}
