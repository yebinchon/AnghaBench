
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rpng_process {scalar_t__ adam7_restore_buf_size; int inflate_buf; int * data; int pass_pos; } ;
struct png_ihdr {int dummy; } ;






 int free (int *) ;
 int png_reverse_filter_adam7_iterate (int **,struct png_ihdr const*,struct rpng_process*) ;

__attribute__((used)) static int png_reverse_filter_adam7(uint32_t **data_,
      const struct png_ihdr *ihdr,
      struct rpng_process *pngp)
{
   int ret = png_reverse_filter_adam7_iterate(data_,
         ihdr, pngp);

   switch (ret)
   {
      case 129:
      case 131:
         break;
      case 128:
         pngp->pass_pos++;
         return 0;
      case 130:
         if (pngp->data)
         {
            free(pngp->data);
            pngp->data = ((void*)0);
         }
         pngp->inflate_buf -= pngp->adam7_restore_buf_size;
         pngp->adam7_restore_buf_size = 0;
         return -1;
   }

   pngp->inflate_buf -= pngp->adam7_restore_buf_size;
   pngp->adam7_restore_buf_size = 0;
   return ret;
}
