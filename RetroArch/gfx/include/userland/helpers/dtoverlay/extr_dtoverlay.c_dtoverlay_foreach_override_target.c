
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* override_callback_t ) (int,TYPE_1__*,int,char*,int,int,int,void*) ;
struct TYPE_5__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int DTOVERRIDE_END ;
 int FDT_ERR_NOSPACE ;
 int NON_FATAL (int) ;
 int dtoverlay_error (char*,...) ;
 int dtoverlay_extract_override (char const*,int*,char const**,int*,char const**,int*,int*,int*) ;
 int fdt_node_offset_by_phandle (int ,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;

int dtoverlay_foreach_override_target(DTBLOB_T *dtb, const char *override_name,
          const char *override_data, int data_len,
          override_callback_t callback,
          void *callback_value)
{
   int err = 0;
   int target_phandle = 0;
   char *data;



   if (!data_len)
      return 0;


   data = malloc(data_len);
   if (!data)
   {
      dtoverlay_error("  out of memory");
      return NON_FATAL(FDT_ERR_NOSPACE);
   }

   memcpy(data, override_data, data_len);
   override_data = data;

   while (err == 0)
   {
      const char *target_prop = ((void*)0);
      char *prop_name = ((void*)0);
      int name_len = 0;
      int target_off = 0;
      int target_size = 0;
      int override_type;
      int node_off = 0;

      override_type = dtoverlay_extract_override(override_name,
                                                &target_phandle,
                                                &override_data, &data_len,
                                                &target_prop, &name_len,
                                                &target_off, &target_size);



      if (target_phandle != 0)
      {
         node_off = fdt_node_offset_by_phandle(dtb->fdt, target_phandle);
         if (node_off < 0)
         {
            dtoverlay_error("  phandle %d not found", target_phandle);
            err = NON_FATAL(node_off);
            break;
         }
      }

      if (target_prop)
      {

         prop_name = malloc(name_len + 1);
         if (!prop_name)
         {
            dtoverlay_error("  out of memory");
            err = NON_FATAL(FDT_ERR_NOSPACE);
            break;
         }
         memcpy(prop_name, target_prop, name_len);
         prop_name[name_len] = '\0';
      }

      err = callback(override_type, dtb, node_off, prop_name,
       target_phandle, target_off, target_size,
       callback_value);

      if (prop_name)
         free(prop_name);

      if (override_type == DTOVERRIDE_END)
         break;
   }

   free(data);

   return err;
}
