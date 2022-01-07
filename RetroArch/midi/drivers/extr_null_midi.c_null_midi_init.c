
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void *null_midi_init(const char *input, const char *output)
{
   (void)input;
   (void)output;

   return (void*)-1;
}
