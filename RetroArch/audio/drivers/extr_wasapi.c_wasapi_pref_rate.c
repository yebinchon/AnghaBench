
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int r ;



__attribute__((used)) static unsigned wasapi_pref_rate(unsigned i)
{
   const unsigned r[] = { 48000, 44100, 96000, 192000, 32000 };

   if (i >= sizeof(r) / sizeof(unsigned))
      return 0;

   return r[i];
}
