
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int midi_event_t ;



__attribute__((used)) static bool null_midi_read(void *p, midi_event_t *event)
{
   (void)p;
   (void)event;

   return 0;
}
