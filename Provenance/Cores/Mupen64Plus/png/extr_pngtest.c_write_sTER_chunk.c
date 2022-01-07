
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_byte ;
struct TYPE_2__ {int sTER_mode; } ;


 int STDERR ;
 int fprintf (int ,char*,int) ;
 int png_write_chunk (int ,int*,int*,int) ;
 TYPE_1__ user_chunk_data ;
 scalar_t__ verbose ;

__attribute__((used)) static void
write_sTER_chunk(png_structp write_ptr)
{
   png_byte sTER[5] = {115, 84, 69, 82, '\0'};

   if (verbose != 0)
      fprintf(STDERR, "\n stereo mode = %d\n", user_chunk_data.sTER_mode);

   png_write_chunk(write_ptr, sTER, &user_chunk_data.sTER_mode, 1);
}
