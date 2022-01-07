
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void planarize_s16(int16_t *out, const int16_t *in, size_t frames)
{
   size_t i;

   for (i = 0; i < frames; i++)
   {
      out[i] = in[2 * i + 0];
      out[i + frames] = in[2 * i + 1];
   }
}
