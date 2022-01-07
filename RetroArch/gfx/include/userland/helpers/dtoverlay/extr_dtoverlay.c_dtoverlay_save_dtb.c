
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long trailer_len; int trailer; int fdt; } ;
typedef int FILE ;
typedef TYPE_1__ DTBLOB_T ;


 int dtoverlay_debug (char*,...) ;
 int dtoverlay_error (char*) ;
 int fclose (int *) ;
 long fdt_totalsize (int ) ;
 int * fopen (char const*,char*) ;
 long fwrite (int ,int,long,int *) ;

int dtoverlay_save_dtb(const DTBLOB_T *dtb, const char *filename)
{
   FILE *fp = fopen(filename, "wb");
   int err = 0;

   if (fp)
   {
      long len = fdt_totalsize(dtb->fdt);
      if (len != fwrite(dtb->fdt, 1, len, fp))
      {
         dtoverlay_error("fwrite failed");
         err = -2;
         goto error_exit;
      }
      if (dtb->trailer_len &&
          (fwrite(dtb->trailer, 1, dtb->trailer_len, fp) != dtb->trailer_len))
      {
         dtoverlay_error("fwrite failed");
         err = -2;
         goto error_exit;
      }

      dtoverlay_debug("Wrote %ld bytes to '%s'", len, filename);
      fclose(fp);
   }
   else
   {
      dtoverlay_debug("Failed to create '%s'", filename);
      err = -1;
   }

error_exit:
   return err;
}
