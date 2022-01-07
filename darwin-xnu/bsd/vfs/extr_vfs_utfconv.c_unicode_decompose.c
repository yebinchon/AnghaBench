
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;


 scalar_t__ HANGUL_LBASE ;
 int HANGUL_NCOUNT ;
 int HANGUL_SBASE ;
 int HANGUL_SCOUNT ;
 int HANGUL_TBASE ;
 int HANGUL_TCOUNT ;
 scalar_t__ HANGUL_VBASE ;
 int unicode_recursive_decompose (int,int*) ;

__attribute__((used)) static int
unicode_decompose(u_int16_t character, u_int16_t *convertedChars)
{
 if ((character >= HANGUL_SBASE) &&
     (character <= (HANGUL_SBASE + HANGUL_SCOUNT))) {
  u_int32_t length;

  character -= HANGUL_SBASE;
  length = (character % HANGUL_TCOUNT ? 3 : 2);

  *(convertedChars++) =
   character / HANGUL_NCOUNT + HANGUL_LBASE;
  *(convertedChars++) =
   (character % HANGUL_NCOUNT) / HANGUL_TCOUNT + HANGUL_VBASE;
  if (length > 2)
   *convertedChars = (character % HANGUL_TCOUNT) + HANGUL_TBASE;
  return (length);
 } else {
  return (unicode_recursive_decompose(character, convertedChars));
 }
}
