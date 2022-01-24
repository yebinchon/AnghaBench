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
struct TYPE_5__ {char* prefix; struct TYPE_5__* next; int /*<<< orphan*/  create; } ;
typedef  TYPE_1__ MMAL_COMPONENT_SUPPLIER_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_SUPPLIER_FUNCTION_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int SUPPLIER_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 TYPE_1__* suppliers ; 
 TYPE_1__* FUNC3 (int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

void FUNC5(const char *prefix,
   MMAL_COMPONENT_SUPPLIER_FUNCTION_T create_fn)
{
   MMAL_COMPONENT_SUPPLIER_T *supplier = FUNC3(1,sizeof(*supplier),NULL);

   FUNC1("prefix %s fn %p", (prefix ? prefix : "NULL"), create_fn);

   if (FUNC4(supplier))
   {
      supplier->create = create_fn;
      FUNC2(supplier->prefix, prefix, SUPPLIER_PREFIX_LEN);
      supplier->prefix[SUPPLIER_PREFIX_LEN-1] = '\0';

      supplier->next = suppliers;
      suppliers = supplier;
   }
   else
   {
      FUNC0("no memory for supplier registry entry");
   }
}