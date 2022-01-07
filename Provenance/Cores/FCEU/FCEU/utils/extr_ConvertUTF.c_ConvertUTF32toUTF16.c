
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UTF32 ;
typedef void* UTF16 ;
typedef int ConversionResult ;
typedef scalar_t__ ConversionFlags ;


 int UNI_MAX_BMP ;
 int UNI_MAX_LEGAL_UTF32 ;
 void* UNI_REPLACEMENT_CHAR ;
 int UNI_SUR_HIGH_START ;
 int UNI_SUR_LOW_END ;
 scalar_t__ UNI_SUR_LOW_START ;
 int conversionOK ;
 scalar_t__ halfBase ;
 int halfMask ;
 int halfShift ;
 int sourceIllegal ;
 scalar_t__ strictConversion ;
 int targetExhausted ;

ConversionResult ConvertUTF32toUTF16 (
 const UTF32** sourceStart, const UTF32* sourceEnd,
 UTF16** targetStart, UTF16* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF32* source = *sourceStart;
    UTF16* target = *targetStart;
    while (source < sourceEnd) {
 UTF32 ch;
 if (target >= targetEnd) {
     result = targetExhausted; break;
 }
 ch = *source++;
 if (ch <= UNI_MAX_BMP) {

     if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_LOW_END) {
  if (flags == strictConversion) {
      --source;
      result = sourceIllegal;
      break;
  } else {
      *target++ = UNI_REPLACEMENT_CHAR;
  }
     } else {
  *target++ = (UTF16)ch;
     }
 } else if (ch > UNI_MAX_LEGAL_UTF32) {
     if (flags == strictConversion) {
  result = sourceIllegal;
     } else {
  *target++ = UNI_REPLACEMENT_CHAR;
     }
 } else {

     if (target + 1 >= targetEnd) {
  --source;
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
