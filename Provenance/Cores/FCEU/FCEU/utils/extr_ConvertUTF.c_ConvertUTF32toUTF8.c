
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UTF8 ;
typedef scalar_t__ UTF32 ;
typedef int ConversionResult ;
typedef scalar_t__ ConversionFlags ;


 scalar_t__ UNI_MAX_LEGAL_UTF32 ;
 scalar_t__ UNI_REPLACEMENT_CHAR ;
 scalar_t__ UNI_SUR_HIGH_START ;
 scalar_t__ UNI_SUR_LOW_END ;
 int conversionOK ;
 scalar_t__* firstByteMark ;
 int sourceIllegal ;
 scalar_t__ strictConversion ;
 int targetExhausted ;

ConversionResult ConvertUTF32toUTF8 (
 const UTF32** sourceStart, const UTF32* sourceEnd,
 UTF8** targetStart, UTF8* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF32* source = *sourceStart;
    UTF8* target = *targetStart;
    while (source < sourceEnd) {
 UTF32 ch;
 unsigned short bytesToWrite = 0;
 const UTF32 byteMask = 0xBF;
 const UTF32 byteMark = 0x80;
 ch = *source++;
 if (flags == strictConversion ) {

     if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_LOW_END) {
  --source;
  result = sourceIllegal;
  break;
     }
 }




 if (ch < (UTF32)0x80) { bytesToWrite = 1;
 } else if (ch < (UTF32)0x800) { bytesToWrite = 2;
 } else if (ch < (UTF32)0x10000) { bytesToWrite = 3;
 } else if (ch <= UNI_MAX_LEGAL_UTF32) { bytesToWrite = 4;
 } else { bytesToWrite = 3;
         ch = UNI_REPLACEMENT_CHAR;
         result = sourceIllegal;
 }

 target += bytesToWrite;
 if (target > targetEnd) {
     --source;
     target -= bytesToWrite; result = targetExhausted; break;
 }
 switch (bytesToWrite) {
     case 4: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
     case 3: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
     case 2: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
     case 1: *--target = (UTF8) (ch | firstByteMark[bytesToWrite]);
 }
 target += bytesToWrite;
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}
