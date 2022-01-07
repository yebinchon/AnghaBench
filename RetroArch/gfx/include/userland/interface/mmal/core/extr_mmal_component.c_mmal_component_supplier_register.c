
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* prefix; struct TYPE_5__* next; int create; } ;
typedef TYPE_1__ MMAL_COMPONENT_SUPPLIER_T ;
typedef int MMAL_COMPONENT_SUPPLIER_FUNCTION_T ;


 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,char const*,int ) ;
 int SUPPLIER_PREFIX_LEN ;
 int strncpy (char*,char const*,int) ;
 TYPE_1__* suppliers ;
 TYPE_1__* vcos_calloc (int,int,int *) ;
 scalar_t__ vcos_verify (TYPE_1__*) ;

void mmal_component_supplier_register(const char *prefix,
   MMAL_COMPONENT_SUPPLIER_FUNCTION_T create_fn)
{
   MMAL_COMPONENT_SUPPLIER_T *supplier = vcos_calloc(1,sizeof(*supplier),((void*)0));

   LOG_TRACE("prefix %s fn %p", (prefix ? prefix : "NULL"), create_fn);

   if (vcos_verify(supplier))
   {
      supplier->create = create_fn;
      strncpy(supplier->prefix, prefix, SUPPLIER_PREFIX_LEN);
      supplier->prefix[SUPPLIER_PREFIX_LEN-1] = '\0';

      supplier->next = suppliers;
      suppliers = supplier;
   }
   else
   {
      LOG_ERROR("no memory for supplier registry entry");
   }
}
