
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int PLATFORM_SoundExit () ;
 scalar_t__ Sound_enabled ;
 int free (int *) ;
 int * process_buffer ;
 int * sync_buffer ;

void Sound_Exit(void)
{
 if (Sound_enabled) {
  PLATFORM_SoundExit();
  Sound_enabled = FALSE;

  free(process_buffer);
  process_buffer = ((void*)0);





 }
}
