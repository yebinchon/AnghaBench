
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_structp ;
struct TYPE_2__ {int* location; } ;


 int have_sTER ;
 int have_vpAg ;
 TYPE_1__ user_chunk_data ;
 int write_sTER_chunk (int ) ;
 int write_vpAg_chunk (int ) ;

__attribute__((used)) static void
write_chunks(png_structp write_ptr, int location)
{
   int i;







   for (i=0; i<2; ++i)
   {
      if (user_chunk_data.location[i] == (location | have_sTER))
         write_sTER_chunk(write_ptr);

      else if (user_chunk_data.location[i] == (location | have_vpAg))
         write_vpAg_chunk(write_ptr);
   }
}
