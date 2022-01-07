
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int fdt_totalsize (int ) ;

int dtoverlay_dtb_totalsize(DTBLOB_T *dtb)
{
   return fdt_totalsize(dtb->fdt);
}
