
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int fdt_pack (int ) ;

void dtoverlay_pack_dtb(DTBLOB_T *dtb)
{
   fdt_pack(dtb->fdt);
}
