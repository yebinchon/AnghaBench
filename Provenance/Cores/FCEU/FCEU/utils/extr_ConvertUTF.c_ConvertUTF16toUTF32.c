
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UTF32 ;
typedef scalar_t__ UTF16 ;
typedef scalar_t__ ConversionResult ;
typedef scalar_t__ ConversionFlags ;


 scalar_t__ UNI_SUR_HIGH_END ;
 scalar_t__ UNI_SUR_HIGH_START ;
 scalar_t__ UNI_SUR_LOW_END ;
 scalar_t__ UNI_SUR_LOW_START ;
 scalar_t__ conversionOK ;
 int fflush (int ) ;
 int fprintf (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ halfBase ;
 scalar_t__ halfShift ;
 scalar_t__ sourceExhausted ;
 scalar_t__ sourceIllegal ;
 int stderr ;
 scalar_t__ strictConversion ;
 scalar_t__ targetExhausted ;

ConversionResult ConvertUTF16toUTF32 (
 const UTF16** sourceStart, const UTF16* sourceEnd,
 UTF32** targetStart, UTF32* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF16* source = *sourceStart;
    UTF32* target = *targetStart;
    UTF32 ch, ch2;
    while (source < sourceEnd) {
 const UTF16* oldSource = source;
 ch = *source++;

 if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_HIGH_END) {

     if (source < sourceEnd) {
  ch2 = *source;

  if (ch2 >= UNI_SUR_LOW_START && ch2 <= UNI_SUR_LOW_END) {
      ch = ((ch - UNI_SUR_HIGH_START) << halfShift)
   + (ch2 - UNI_SUR_LOW_START) + halfBase;
      ++source;
  } else if (flags == strictConversion) {
      --source;
      result = sourceIllegal;
      break;
  }
     } else {
  --source;
  result = sourceExhausted;
  break;
     }
 } else if (flags == strictConversion) {

     if (ch >= UNI_SUR_LOW_START && ch <= UNI_SUR_LOW_END) {
  --source;
  result = sourceIllegal;
  break;
     }
 }
 if (target >= targetEnd) {
     source = oldSource;
     result = targetExhausted; break;
 }
 *target++ = ch;
    }
    *sourceStart = source;
    *targetStart = target;






    return result;
}
