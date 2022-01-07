
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int IMG_TAPE_Read (int ,unsigned int*,int *,int *) ;
 int POKEY_SKCTL ;
 int TRUE ;
 int UpdateFlags () ;
 int cassette_file ;
 scalar_t__ cassette_readable ;
 int eof_of_tape ;
 scalar_t__ event_time_left ;
 int passing_gap ;
 int pending_serin ;
 int pending_serin_byte ;
 int serin_byte ;

__attribute__((used)) static int CassetteRead(int num_ticks)
{
 if (cassette_readable) {
  int loaded = FALSE;
  event_time_left -= num_ticks;
  while (event_time_left < 0) {
   unsigned int length;
   if (!passing_gap && pending_serin) {
    serin_byte = pending_serin_byte;

    loaded = TRUE;
   }


   pending_serin = (POKEY_SKCTL & 0x03) != 0;

   if (!IMG_TAPE_Read(cassette_file, &length, &passing_gap, &pending_serin_byte)) {
    eof_of_tape = 1;
    UpdateFlags();
    return loaded;
   }

   event_time_left += length;
  }
  return loaded;
 }
 return FALSE;
}
