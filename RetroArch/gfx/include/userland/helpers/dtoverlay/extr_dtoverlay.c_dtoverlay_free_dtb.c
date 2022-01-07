
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* trailer; scalar_t__ trailer_is_malloced; struct TYPE_4__* fdt; scalar_t__ fdt_is_malloced; } ;
typedef TYPE_1__ DTBLOB_T ;


 int free (TYPE_1__*) ;

void dtoverlay_free_dtb(DTBLOB_T *dtb)
{
   if (dtb)
   {
      if (dtb->fdt_is_malloced)
         free(dtb->fdt);
      if (dtb->trailer_is_malloced)
         free(dtb->trailer);
      free(dtb);
   }
}
