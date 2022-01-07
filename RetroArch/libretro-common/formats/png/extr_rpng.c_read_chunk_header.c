
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct png_chunk {int* type; int size; } ;


 int dword_be (int*) ;

__attribute__((used)) static bool read_chunk_header(uint8_t *buf, uint8_t *buf_end, struct png_chunk *chunk)
{
   unsigned i;
   uint8_t dword[4];

   dword[0] = '\0';



   if (buf_end - buf < 8)
      return 0;

   for (i = 0; i < 4; i++)
      dword[i] = buf[i];

   chunk->size = dword_be(dword);


   if (buf + 8 + chunk->size > buf_end)
      return 0;

   for (i = 0; i < 4; i++)
   {
      uint8_t byte = buf[i + 4];



      if ((byte < 65) || ((byte > 90) && (byte < 97)) || (byte > 122))
         return 0;

      chunk->type[i] = byte;
   }

   return 1;
}
