
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint16_t ;



__attribute__((used)) static void state_manager_raw_decompress(const void *patch,
      size_t patchlen, void *data, size_t datalen)
{
   uint16_t *out16 = (uint16_t*)data;
   const uint16_t *patch16 = (const uint16_t*)patch;

   (void)patchlen;
   (void)datalen;

   for (;;)
   {
      uint16_t numchanged = *(patch16++);

      if (numchanged)
      {
         uint16_t i;

         out16 += *patch16++;






         for (i = 0; i < numchanged; i++)
            out16[i] = patch16[i];

         patch16 += numchanged;
         out16 += numchanged;
      }
      else
      {
         uint32_t numunchanged = patch16[0] | (patch16[1] << 16);

         if (!numunchanged)
            break;
         patch16 += 2;
         out16 += numunchanged;
      }
   }
}
