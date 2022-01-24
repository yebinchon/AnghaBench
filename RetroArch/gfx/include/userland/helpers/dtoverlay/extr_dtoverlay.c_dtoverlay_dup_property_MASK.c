#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char const*,void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_1__ const*,int) ; 

int FUNC8(DTBLOB_T *dtb, const char *node_name,
                           const char *dst, const char *src)
{
   /* Find the node and src property */
   const DTBLOB_T *src_prop;
   int node_off;
   int prop_len = 0;
   int err = 0;

   node_off = FUNC2(dtb->fdt, node_name);
   if (node_off < 0)
      return 0;

   src_prop = FUNC1(dtb->fdt, node_off, src, &prop_len);
   if (!src_prop)
      return 0;

   err = FUNC4(dtb->fdt, node_off, dst, src_prop, prop_len);
   if (err != 0)
   {
      void *prop_data;
      /* Copy the src property, just in case things move */
      prop_data = FUNC6(prop_len);
      FUNC7(prop_data, src_prop, prop_len);

      err = FUNC3(dtb->fdt, node_off, dst, prop_data, prop_len);

      FUNC5(prop_data);
   }

   if (err == 0)
      FUNC0("%s:%s=%s", node_name, dst, src);
   return err;
}