
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int freq; unsigned int channels; unsigned int sample_size; scalar_t__ frag_frames; } ;


 scalar_t__ Atari800_turbo ;
 int Log_print (char*,unsigned int,unsigned int,...) ;
 int PLATFORM_SoundLock () ;
 int PLATFORM_SoundUnlock () ;
 unsigned int POKEYSND_UpdateProcessBuffer () ;
 scalar_t__ POKEYSND_process_buffer ;
 TYPE_1__ Sound_out ;
 int Util_sleep (double) ;
 unsigned int Util_time () ;
 int WriteOut () ;
 unsigned int last_audio_write_time ;
 int memcpy (scalar_t__,scalar_t__,unsigned int) ;
 scalar_t__ sync_buffer ;
 unsigned int sync_buffer_size ;
 unsigned int sync_est_fill ;
 unsigned int sync_max_fill ;
 unsigned int sync_read_pos ;
 unsigned int sync_write_pos ;

__attribute__((used)) static void UpdateSyncBuffer(void)
{
 unsigned int bytes_written;
 unsigned int samples_written;
 unsigned int fill;
 unsigned int new_write_pos;

 PLATFORM_SoundLock();

 fill = sync_write_pos - sync_read_pos;


 {
  unsigned int est_gap;
  est_gap = (Util_time() - last_audio_write_time)*Sound_out.freq*Sound_out.channels*Sound_out.sample_size;
  if (fill < est_gap)
   sync_est_fill = 0;
  else
   sync_est_fill = fill - est_gap;
 }

 if (Atari800_turbo && sync_est_fill > sync_max_fill) {
  PLATFORM_SoundUnlock();
  return;
 }


 samples_written = POKEYSND_UpdateProcessBuffer();
 bytes_written = Sound_out.sample_size * samples_written;


 if (bytes_written > sync_buffer_size - fill) {
  do {
   PLATFORM_SoundUnlock();

   Util_sleep((double)Sound_out.frag_frames / Sound_out.freq);
   PLATFORM_SoundLock();

   WriteOut();

   fill = sync_write_pos - sync_read_pos;
  } while (bytes_written > sync_buffer_size - fill);
 }
 new_write_pos = sync_write_pos + bytes_written;
 if (new_write_pos/sync_buffer_size == sync_write_pos/sync_buffer_size)

  memcpy(sync_buffer + sync_write_pos%sync_buffer_size, POKEYSND_process_buffer, bytes_written);
 else {

  int first_part_size = sync_buffer_size - sync_write_pos%sync_buffer_size;
  memcpy(sync_buffer + sync_write_pos%sync_buffer_size, POKEYSND_process_buffer, first_part_size);
  memcpy(sync_buffer, POKEYSND_process_buffer + first_part_size, bytes_written - first_part_size);
 }

 sync_write_pos = new_write_pos;
 if (sync_write_pos > sync_read_pos + sync_buffer_size)
  sync_write_pos -= sync_buffer_size;
 PLATFORM_SoundUnlock();
}
