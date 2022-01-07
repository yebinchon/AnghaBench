
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uLong ;
typedef unsigned int uInt ;
typedef unsigned int png_uint_32 ;
struct TYPE_5__ {unsigned int chunklen; unsigned int chunktype; unsigned int chunkpos; unsigned int IDAT_pos; unsigned int IDAT_len; unsigned int IDAT_size; unsigned int IDAT_bits; int IDAT_crc; int pread; } ;
typedef TYPE_1__ png_store ;
typedef scalar_t__ png_size_t ;
typedef unsigned int* png_bytep ;
typedef unsigned int png_byte ;


 unsigned int CHUNK_IDAT ;
 unsigned int CHUNK_IEND ;
 int crc32 (int,unsigned int*,unsigned int) ;
 int png_error (int ,char*) ;
 unsigned int png_get_uint_32 (unsigned int*) ;
 unsigned int random_byte () ;
 unsigned int random_u32 () ;
 scalar_t__ store_read_buffer_avail (TYPE_1__*) ;
 int store_read_imp (TYPE_1__*,unsigned int*,scalar_t__) ;

__attribute__((used)) static png_size_t
store_read_chunk(png_store *ps, png_bytep pb, const png_size_t max,
      const png_size_t min)
{
   png_uint_32 chunklen = ps->chunklen;
   png_uint_32 chunktype = ps->chunktype;
   png_uint_32 chunkpos = ps->chunkpos;
   png_size_t st = max;

   if (st > 0) do
   {
      if (chunkpos >= chunklen)
      {
         png_byte buffer[8];


         store_read_imp(ps, buffer, 8U);
         chunklen = png_get_uint_32(buffer) + 12U;
         chunktype = png_get_uint_32(buffer+4U);
         chunkpos = 0U;
      }

      if (chunktype == CHUNK_IDAT)
      {
         png_uint_32 IDAT_pos = ps->IDAT_pos;
         png_uint_32 IDAT_len = ps->IDAT_len;
         png_uint_32 IDAT_size = ps->IDAT_size;


         if (chunkpos < 8U)
            chunkpos = 8U;

         if (IDAT_pos == IDAT_len)
         {
            png_byte random = random_byte();






            if (IDAT_len == 0U)
            {
               switch (random & 3U)
               {
                  case 0U: IDAT_len = 12U; break;
                  case 1U: IDAT_len = 13U; break;
                  default: IDAT_len = random_u32();
                           IDAT_len %= IDAT_size;
                           IDAT_len += 13U;
                           break;
               }
            }

            else if (IDAT_size == 0U)
            {

               if (chunkpos != chunklen-4U)
                  png_error(ps->pread, "internal: IDAT size mismatch");






               if ((random & 3U) == 0U)
                  IDAT_len = 12U;

               else
               {



                  png_byte buffer[4];

                  store_read_imp(ps, buffer, 4U);
                  chunkpos += 4U;
                  ps->IDAT_pos = IDAT_pos;
                  ps->IDAT_len = IDAT_len;
                  ps->IDAT_size = 0U;
                  continue;
               }
            }

            else
            {



               IDAT_len = random_u32();
               IDAT_len &= (1U << (1U + random % ps->IDAT_bits)) - 1U;
               if (IDAT_len > IDAT_size)
                  IDAT_len = IDAT_size;
               IDAT_len += 12U;
            }

            IDAT_pos = 0U;
            ps->IDAT_crc = 0x35af061e;
         }

         if (IDAT_pos < 8U) do
         {
            png_uint_32 b;
            unsigned int shift;

            if (IDAT_pos < 4U)
               b = IDAT_len - 12U;

            else
               b = CHUNK_IDAT;

            shift = 3U & IDAT_pos;
            ++IDAT_pos;

            if (shift < 3U)
               b >>= 8U*(3U-shift);

            *pb++ = 0xffU & b;
         }
         while (--st > 0 && IDAT_pos < 8);

         else if (IDAT_pos < IDAT_len - 4U)
         {
            if (chunkpos < chunklen-4U)
            {
               uInt avail = (uInt)-1;

               if (avail > (IDAT_len-4U) - IDAT_pos)
                  avail = (uInt) ((IDAT_len-4U) - IDAT_pos);

               if (avail > st)
                  avail = (uInt) st;

               if (avail > (chunklen-4U) - chunkpos)
                  avail = (uInt) ((chunklen-4U) - chunkpos);

               store_read_imp(ps, pb, avail);
               ps->IDAT_crc = crc32(ps->IDAT_crc, pb, avail);
               pb += (png_size_t) avail;
               st -= (png_size_t) avail;
               chunkpos += (png_uint_32) avail;
               IDAT_size -= (png_uint_32) avail;
               IDAT_pos += (png_uint_32) avail;
            }

            else
            {
               png_byte buffer[4];

               store_read_imp(ps, buffer, 4U);
               chunkpos += 4U;
            }
         }

         else do
         {
            uLong b = ps->IDAT_crc;
            unsigned int shift = (IDAT_len - IDAT_pos);
            ++IDAT_pos;

            if (shift > 1U)
               b >>= 8U*(shift-1U);

            *pb++ = 0xffU & b;
         }
         while (--st > 0 && IDAT_pos < IDAT_len);

         ps->IDAT_pos = IDAT_pos;
         ps->IDAT_len = IDAT_len;
         ps->IDAT_size = IDAT_size;
      }

      else
      {



         if (ps->IDAT_len > 0 && ps->IDAT_size > 0)
            png_error(ps->pread, "internal: missing IDAT data");

         if (chunktype == CHUNK_IEND && ps->IDAT_len == 0U)
            png_error(ps->pread, "internal: missing IDAT");

         if (chunkpos < 8U) do
         {
            png_uint_32 b;
            unsigned int shift;

            if (chunkpos < 4U)
               b = chunklen - 12U;

            else
               b = chunktype;

            shift = 3U & chunkpos;
            ++chunkpos;

            if (shift < 3U)
               b >>= 8U*(3U-shift);

            *pb++ = 0xffU & b;
         }
         while (--st > 0 && chunkpos < 8);

         else
         {
            png_size_t avail = st;

            if (avail > chunklen - chunkpos)
               avail = (png_size_t) (chunklen - chunkpos);

            store_read_imp(ps, pb, avail);
            pb += avail;
            st -= avail;
            chunkpos += (png_uint_32) avail;




            if (chunkpos >= chunklen && max-st >= min &&
                     store_read_buffer_avail(ps) == 0)
               break;
         }
      }
   }
   while (st > 0);

   ps->chunklen = chunklen;
   ps->chunktype = chunktype;
   ps->chunkpos = chunkpos;

   return st;
}
