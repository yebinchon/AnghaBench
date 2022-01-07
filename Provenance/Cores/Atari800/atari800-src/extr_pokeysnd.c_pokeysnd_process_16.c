
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef scalar_t__ UBYTE ;


 int pokeysnd_process_8 (int*,int) ;

__attribute__((used)) static void pokeysnd_process_16(void *sndbuffer, int sndn)
{
 UWORD *buffer = (UWORD *) sndbuffer;
 int i;

 pokeysnd_process_8(buffer, sndn);

 for (i = sndn - 1; i >= 0; i--) {
  int smp = ((int) (((UBYTE *) buffer)[i]) - 0x80) * 0x100;

  if (smp > 32767)
   smp = 32767;
  else if (smp < -32768)
   smp = -32768;

  buffer[i] = smp;
 }
}
