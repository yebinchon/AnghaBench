
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UTF8 ;
typedef int UTF32 ;
typedef void* UTF16 ;
typedef int ConversionResult ;
typedef scalar_t__ ConversionFlags ;


 int UNI_MAX_BMP ;
 int UNI_MAX_UTF16 ;
 void* UNI_REPLACEMENT_CHAR ;
 int UNI_SUR_HIGH_START ;
 int UNI_SUR_LOW_END ;
 scalar_t__ UNI_SUR_LOW_START ;
 int conversionOK ;
 scalar_t__ halfBase ;
 int halfMask ;
 int halfShift ;
 int isLegalUTF8 (size_t const*,unsigned short) ;
 scalar_t__* offsetsFromUTF8 ;
 int sourceExhausted ;
 int sourceIllegal ;
 scalar_t__ strictConversion ;
 int targetExhausted ;
 unsigned short* trailingBytesForUTF8 ;

ConversionResult ConvertUTF8toUTF16 (
 const UTF8** sourceStart, const UTF8* sourceEnd,
 UTF16** targetStart, UTF16* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF8* source = *sourceStart;
    UTF16* target = *targetStart;
    while (source < sourceEnd) {
 UTF32 ch = 0;
 unsigned short extraBytesToRead = trailingBytesForUTF8[*source];
 if (source + extraBytesToRead >= sourceEnd) {
     result = sourceExhausted; break;
 }

 if (! isLegalUTF8(source, extraBytesToRead+1)) {
     result = sourceIllegal;
     break;
 }



 switch (extraBytesToRead) {
     case 5: ch += *source++; ch <<= 6;
     case 4: ch += *source++; ch <<= 6;
     case 3: ch += *source++; ch <<= 6;
     case 2: ch += *source++; ch <<= 6;
     case 1: ch += *source++; ch <<= 6;
     case 0: ch += *source++;
 }
 ch -= offsetsFromUTF8[extraBytesToRead];

 if (target >= targetEnd) {
     source -= (extraBytesToRead+1);
     result = targetExhausted; break;
 }
 if (ch <= UNI_MAX_BMP) {

     if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_LOW_END) {
  if (flags == strictConversion) {
      source -= (extraBytesToRead+1);
      result = sourceIllegal;
      break;
  } else {
      *target++ = UNI_REPLACEMENT_CHAR;
  }
     } else {
  *target++ = (UTF16)ch;
     }
 } else if (ch > UNI_MAX_UTF16) {
     if (flags == strictConversion) {
  result = sourceIllegal;
  source -= (extraBytesToRead+1);
  break;
     } else {
  *target++ = UNI_REPLACEMENT_CHAR;
     }
 } else {

     if (target + 1 >= targetEnd) {
  source -= (extraBytesToRead+1);
  result = targetExhausted; break;
     }
     ch -= halfBase;
     *target++ = (UTF16)((ch >> halfShift) + UNI_SUR_HIGH_START);
     *target++ = (UTF16)((ch & halfMask) + UNI_SUR_LOW_START);
 }
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}
