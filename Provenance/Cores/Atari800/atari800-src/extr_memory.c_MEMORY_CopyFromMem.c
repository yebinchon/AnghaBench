
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int MEMORY_GetByte (int ) ;

void MEMORY_CopyFromMem(UWORD from, UBYTE *to, int size)
{
 while (--size >= 0) {
  *to++ = MEMORY_GetByte(from);
  from++;
 }
}
