
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fixups_applied; } ;
typedef TYPE_1__ DTBLOB_T ;


 int NON_FATAL (int) ;
 int dtoverlay_resolve_fixups (TYPE_1__*,TYPE_1__*) ;
 int dtoverlay_resolve_phandles (TYPE_1__*,TYPE_1__*) ;

int dtoverlay_fixup_overlay(DTBLOB_T *base_dtb, DTBLOB_T *overlay_dtb)
{
   int err;



   err = dtoverlay_resolve_fixups(base_dtb, overlay_dtb);

   if (err >= 0)
      err = dtoverlay_resolve_phandles(base_dtb, overlay_dtb);

   overlay_dtb->fixups_applied = 1;

   return NON_FATAL(err);
}
