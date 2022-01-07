
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ max_phandle; void* fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FDT_ERR_NOSPACE ;
 TYPE_1__* calloc (int,int) ;
 int dtoverlay_error (char*,...) ;
 int fdt_check_header (void*) ;
 scalar_t__ fdt_get_phandle (void*,int) ;
 int fdt_next_node (void*,int,int *) ;
 int fdt_set_totalsize (void*,int) ;
 int fdt_totalsize (void*) ;

DTBLOB_T *dtoverlay_import_fdt(void *fdt, int buf_size)
{
   DTBLOB_T *dtb = ((void*)0);
   int node_off;
   int dtb_len;
   int err;

   err = fdt_check_header(fdt);
   if (err != 0)
   {
      dtoverlay_error("not a valid FDT - err %d", err);
      goto error_exit;
   }

   dtb_len = fdt_totalsize(fdt);

   if (buf_size < dtb_len)
   {
      dtoverlay_error("fdt is too large");
      err = -FDT_ERR_NOSPACE;
      goto error_exit;
   }

   if (buf_size > dtb_len)
         fdt_set_totalsize(fdt, buf_size);

   dtb = calloc(1, sizeof(DTBLOB_T));
   if (!dtb)
   {
      dtoverlay_error("out of memory");
      goto error_exit;
   }

   dtb->fdt = fdt;
   dtb->max_phandle = 0;




   for (node_off = 0;
        node_off >= 0;
        node_off = fdt_next_node(fdt, node_off, ((void*)0)))
   {
      uint32_t phandle = fdt_get_phandle(fdt, node_off);
      if (phandle > dtb->max_phandle)
         dtb->max_phandle = phandle;
   }

error_exit:
   return dtb;
}
