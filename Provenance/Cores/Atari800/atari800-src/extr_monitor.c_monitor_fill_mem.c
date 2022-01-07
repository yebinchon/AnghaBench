
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int MEMORY_dPutByte (int,int ) ;
 scalar_t__ get_hex3 (int*,int*,int*) ;

__attribute__((used)) static void monitor_fill_mem(void)
{
 UWORD addr1;
 UWORD addr2;
 UWORD hexval;
 if (get_hex3(&addr1, &addr2, &hexval)) {

  int a;
  for (a = addr1; a <= addr2; a++)
   MEMORY_dPutByte(a, (UBYTE) hexval);
 }
}
