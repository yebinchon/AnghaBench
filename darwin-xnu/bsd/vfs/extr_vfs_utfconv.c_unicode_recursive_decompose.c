
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unicode_mappings16 ;
typedef int u_int32_t ;
typedef int u_int16_t ;


 int EXTRACT_COUNT (int) ;
 int RECURSIVE_DECOMPOSITION ;
 scalar_t__ __CFUniCharDecompositionTable ;
 int* __CFUniCharMultipleDecompositionTable ;
 int __UniCharDecompositionTableLength ;
 int getmappedvalue16 (int const*,int ,int) ;

__attribute__((used)) static u_int32_t
unicode_recursive_decompose(u_int16_t character, u_int16_t *convertedChars)
{
 u_int16_t value;
 u_int32_t length;
 u_int16_t firstChar;
 u_int16_t theChar;
 const u_int16_t *bmpMappings;
 u_int32_t usedLength;

 value = getmappedvalue16(
  (const unicode_mappings16 *)__CFUniCharDecompositionTable,
  __UniCharDecompositionTableLength, character);
 length = EXTRACT_COUNT(value);
 firstChar = value & 0x0FFF;
 theChar = firstChar;
 bmpMappings = (length == 1 ? &theChar : __CFUniCharMultipleDecompositionTable + firstChar);
 usedLength = 0;

 if (value & RECURSIVE_DECOMPOSITION) {
     usedLength = unicode_recursive_decompose((u_int16_t)*bmpMappings, convertedChars);

     --length;
     if (!usedLength)
      return 0;
     ++bmpMappings;
     convertedChars += usedLength;
 }

 usedLength += length;

 while (length--)
  *(convertedChars++) = *(bmpMappings++);

 return (usedLength);
}
