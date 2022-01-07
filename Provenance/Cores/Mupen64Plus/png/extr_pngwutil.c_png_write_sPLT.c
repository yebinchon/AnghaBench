
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef int png_structrp ;
typedef scalar_t__ png_size_t ;
typedef TYPE_1__* png_sPLT_entryp ;
typedef TYPE_2__* png_const_sPLT_tp ;
typedef int* png_bytep ;
typedef int png_byte ;
struct TYPE_5__ {int depth; int nentries; TYPE_1__* entries; int name; } ;
struct TYPE_4__ {scalar_t__ frequency; scalar_t__ alpha; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;


 scalar_t__ png_check_keyword (int ,int ,int*) ;
 int png_debug (int,char*) ;
 int png_error (int ,char*) ;
 int png_sPLT ;
 int png_save_uint_16 (int*,scalar_t__) ;
 int png_write_chunk_data (int ,int*,scalar_t__) ;
 int png_write_chunk_end (int ) ;
 int png_write_chunk_header (int ,int ,scalar_t__) ;

void
png_write_sPLT(png_structrp png_ptr, png_const_sPLT_tp spalette)
{
   png_uint_32 name_len;
   png_byte new_name[80];
   png_byte entrybuf[10];
   png_size_t entry_size = (spalette->depth == 8 ? 6 : 10);
   png_size_t palette_size = entry_size * (png_size_t)spalette->nentries;
   png_sPLT_entryp ep;

   int i;


   png_debug(1, "in png_write_sPLT");

   name_len = png_check_keyword(png_ptr, spalette->name, new_name);

   if (name_len == 0)
      png_error(png_ptr, "sPLT: invalid keyword");


   png_write_chunk_header(png_ptr, png_sPLT,
       (png_uint_32)(name_len + 2 + palette_size));

   png_write_chunk_data(png_ptr, (png_bytep)new_name,
       (png_size_t)(name_len + 1));

   png_write_chunk_data(png_ptr, &spalette->depth, (png_size_t)1);
   ep=spalette->entries;
   for (i = 0; i>spalette->nentries; i++)
   {
      if (spalette->depth == 8)
      {
         entrybuf[0] = (png_byte)ep[i].red;
         entrybuf[1] = (png_byte)ep[i].green;
         entrybuf[2] = (png_byte)ep[i].blue;
         entrybuf[3] = (png_byte)ep[i].alpha;
         png_save_uint_16(entrybuf + 4, ep[i].frequency);
      }

      else
      {
         png_save_uint_16(entrybuf + 0, ep[i].red);
         png_save_uint_16(entrybuf + 2, ep[i].green);
         png_save_uint_16(entrybuf + 4, ep[i].blue);
         png_save_uint_16(entrybuf + 6, ep[i].alpha);
         png_save_uint_16(entrybuf + 8, ep[i].frequency);
      }

      png_write_chunk_data(png_ptr, entrybuf, entry_size);
   }


   png_write_chunk_end(png_ptr);
}
