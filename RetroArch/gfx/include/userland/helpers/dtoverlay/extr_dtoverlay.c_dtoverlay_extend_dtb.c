
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt_is_malloced; void* fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FDT_ERR_NOSPACE ;
 int fdt_set_totalsize (void*,int) ;
 int fdt_totalsize (void*) ;
 int free (void*) ;
 void* malloc (int) ;
 int memcpy (void*,void*,int) ;

int dtoverlay_extend_dtb(DTBLOB_T *dtb, int new_size)
{
   int size = fdt_totalsize(dtb->fdt);
   int err = 0;

   if (new_size < 0)
      new_size = size - new_size;

   if (new_size > size)
   {
      void *fdt;
      fdt = malloc(new_size);
      if (fdt)
      {
         memcpy(fdt, dtb->fdt, size);
         fdt_set_totalsize(fdt, new_size);

         if (dtb->fdt_is_malloced)
            free(dtb->fdt);

         dtb->fdt = fdt;
         dtb->fdt_is_malloced = 1;
      }
      else
      {
         err = -FDT_ERR_NOSPACE;
      }
   }
   else if (new_size < size)
   {

      err = -FDT_ERR_NOSPACE;
   }

   return err;
}
