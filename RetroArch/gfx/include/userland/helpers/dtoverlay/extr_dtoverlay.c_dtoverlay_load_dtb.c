
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int DTBLOB_T ;


 int dtoverlay_error (char*,char const*) ;
 int * dtoverlay_load_dtb_from_fp (int *,int) ;
 int * fopen (char const*,char*) ;

DTBLOB_T *dtoverlay_load_dtb(const char *filename, int max_size)
{
   FILE *fp = fopen(filename, "rb");
   if (fp)
      return dtoverlay_load_dtb_from_fp(fp, max_size);
   dtoverlay_error("Failed to open '%s'", filename);
   return ((void*)0);
}
