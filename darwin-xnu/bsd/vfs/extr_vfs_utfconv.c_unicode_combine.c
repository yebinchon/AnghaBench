
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unicode_mappings32 ;
typedef int unicode_mappings16 ;
typedef int u_int32_t ;
typedef scalar_t__ u_int16_t ;


 scalar_t__ HANGUL_LBASE ;
 scalar_t__ HANGUL_LCOUNT ;
 scalar_t__ HANGUL_SBASE ;
 scalar_t__ HANGUL_SCOUNT ;
 scalar_t__ HANGUL_TBASE ;
 scalar_t__ HANGUL_TCOUNT ;
 scalar_t__ HANGUL_VBASE ;
 scalar_t__ HANGUL_VCOUNT ;
 scalar_t__ __CFUniCharBMPPrecompDestinationTable ;
 scalar_t__ __CFUniCharPrecompSourceTable ;
 int __CFUniCharPrecompositionTableLength ;
 int getmappedvalue16 (int const*,int,scalar_t__) ;
 int getmappedvalue32 (int const*,int ,scalar_t__) ;

__attribute__((used)) static u_int16_t
unicode_combine(u_int16_t base, u_int16_t combining)
{
 u_int32_t value;


 if ((combining >= HANGUL_VBASE) && (combining < (HANGUL_TBASE + HANGUL_TCOUNT))) {

  if ((combining < (HANGUL_VBASE + HANGUL_VCOUNT)) &&
      (base >= HANGUL_LBASE && base < (HANGUL_LBASE + HANGUL_LCOUNT))) {
      return (HANGUL_SBASE +
              ((base - HANGUL_LBASE)*(HANGUL_VCOUNT*HANGUL_TCOUNT)) +
              ((combining - HANGUL_VBASE)*HANGUL_TCOUNT));
  }


  if ((combining > HANGUL_TBASE) &&
      (base >= HANGUL_SBASE && base < (HANGUL_SBASE + HANGUL_SCOUNT))) {
   if ((base - HANGUL_SBASE) % HANGUL_TCOUNT)
    return (0);
   else
    return (base + (combining - HANGUL_TBASE));
  }
 }

 value = getmappedvalue32(
  (const unicode_mappings32 *)__CFUniCharPrecompSourceTable,
  __CFUniCharPrecompositionTableLength, combining);

 if (value) {
  value = getmappedvalue16(
   (const unicode_mappings16 *)
   ((const u_int32_t *)__CFUniCharBMPPrecompDestinationTable + (value & 0xFFFF)),
   (value >> 16), base);
 }
 return (value);
}
