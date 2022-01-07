
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_byte ;
struct TYPE_2__ {int vpAg_units; scalar_t__ vpAg_height; scalar_t__ vpAg_width; } ;


 int STDERR ;
 int fprintf (int ,char*,unsigned long,unsigned long,int) ;
 int png_save_uint_32 (int*,scalar_t__) ;
 int png_write_chunk (int ,int*,int*,int) ;
 TYPE_1__ user_chunk_data ;
 scalar_t__ verbose ;

__attribute__((used)) static void
write_vpAg_chunk(png_structp write_ptr)
{
   png_byte vpAg[5] = {118, 112, 65, 103, '\0'};

   png_byte vpag_chunk_data[9];

   if (verbose != 0)
      fprintf(STDERR, " vpAg = %lu x %lu, units = %d\n",
          (unsigned long)user_chunk_data.vpAg_width,
          (unsigned long)user_chunk_data.vpAg_height,
          user_chunk_data.vpAg_units);

   png_save_uint_32(vpag_chunk_data, user_chunk_data.vpAg_width);
   png_save_uint_32(vpag_chunk_data + 4, user_chunk_data.vpAg_height);
   vpag_chunk_data[8] = user_chunk_data.vpAg_units;
   png_write_chunk(write_ptr, vpAg, vpag_chunk_data, 9);
}
