
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTBLOB_T ;


 int dtoverlay_dup_property (int *,char*,char const*,char const*) ;

int dtoverlay_set_synonym(DTBLOB_T *dtb, const char *dst, const char *src)
{




   int err;

   err = dtoverlay_dup_property(dtb, "/aliases", dst, src);
   if (err == 0)
      err = dtoverlay_dup_property(dtb, "/__symbols__", dst, src);
   if (err == 0)
      dtoverlay_dup_property(dtb, "/__overrides__", dst, src);
   return err;
}
