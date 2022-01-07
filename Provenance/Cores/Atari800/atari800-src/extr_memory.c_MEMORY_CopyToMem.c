
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int MEMORY_PutByte (int ,int const) ;

void MEMORY_CopyToMem(const UBYTE *from, UWORD to, int size)
{
 while (--size >= 0) {
  MEMORY_PutByte(to, *from);
  from++;
  to++;
 }
}
