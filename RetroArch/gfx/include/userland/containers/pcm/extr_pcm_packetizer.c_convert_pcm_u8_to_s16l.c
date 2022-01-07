
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;



__attribute__((used)) static void convert_pcm_u8_to_s16l( uint8_t **p_out, uint8_t *in, size_t size)
{
   int16_t *out = (int16_t *)*p_out;
   uint8_t tmp;

   while(size--)
   {
      tmp = *in++;
      *out++ = ((tmp - 128) << 8) | tmp;
   }
   *p_out = (uint8_t *)out;
}
