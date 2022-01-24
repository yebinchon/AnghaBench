#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int (* override_callback_t ) (int,TYPE_1__*,int,char*,int,int,int,void*) ;
struct TYPE_5__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int DTOVERRIDE_END ; 
 int FDT_ERR_NOSPACE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*,int*,char const**,int*,char const**,int*,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

int FUNC7(DTBLOB_T *dtb, const char *override_name,
				      const char *override_data, int data_len,
				      override_callback_t callback,
				      void *callback_value)
{
   int err = 0;
   int target_phandle = 0;
   char *data;

   /* Short-circuit the degenerate case of an empty parameter, avoiding an
      apparent memory allocation failure. */
   if (!data_len)
      return 0;

   /* Copy the override data in case it moves */
   data = FUNC5(data_len);
   if (!data)
   {
      FUNC1("  out of memory");
      return FUNC0(FDT_ERR_NOSPACE);
   }

   FUNC6(data, override_data, data_len);
   override_data = data;

   while (err == 0)
   {
      const char *target_prop = NULL;
      char *prop_name = NULL;
      int name_len = 0;
      int target_off = 0;
      int target_size = 0;
      int override_type;
      int node_off = 0;

      override_type = FUNC2(override_name,
                                                &target_phandle,
                                                &override_data, &data_len,
                                                &target_prop, &name_len,
                                                &target_off, &target_size);

      /* Pass DTOVERRIDE_END to the callback, in case it is interested */

      if (target_phandle != 0)
      {
         node_off = FUNC3(dtb->fdt, target_phandle);
         if (node_off < 0)
         {
            FUNC1("  phandle %d not found", target_phandle);
            err = FUNC0(node_off);
            break;
         }
      }

      if (target_prop)
      {
         /* Sadly there are no '_namelen' setprop variants, so a copy is required */
         prop_name = FUNC5(name_len + 1);
         if (!prop_name)
         {
            FUNC1("  out of memory");
            err = FUNC0(FDT_ERR_NOSPACE);
            break;
         }
         FUNC6(prop_name, target_prop, name_len);
         prop_name[name_len] = '\0';
      }

      err = callback(override_type, dtb, node_off, prop_name,
		     target_phandle, target_off, target_size,
		     callback_value);

      if (prop_name)
         FUNC4(prop_name);

      if (override_type == DTOVERRIDE_END)
         break;
   }

   FUNC4(data);

   return err;
}