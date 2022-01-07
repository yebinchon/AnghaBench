
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTBLOB_T ;


 void* dtoverlay_get_property (int *,int,char*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

int dtoverlay_node_is_enabled(DTBLOB_T *dtb, int pos)
{
   if (pos >= 0)
   {
      const void *prop = dtoverlay_get_property(dtb, pos, "status", ((void*)0));
      if (prop &&
          ((strcmp((const char *)prop, "okay") == 0) ||
           (strcmp((const char *)prop, "ok") == 0)))
         return 1;
   }
   return 0;
}
