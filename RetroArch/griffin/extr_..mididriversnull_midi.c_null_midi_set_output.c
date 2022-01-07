
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static bool null_midi_set_output(void *p, const char *output)
{
   (void)p;

   return output == ((void*)0) || string_is_equal(output, "Null");
}
