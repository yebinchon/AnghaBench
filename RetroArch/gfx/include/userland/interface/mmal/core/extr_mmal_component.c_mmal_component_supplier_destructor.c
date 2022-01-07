
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ MMAL_COMPONENT_SUPPLIER_T ;


 TYPE_1__* suppliers ;
 int vcos_free (TYPE_1__*) ;

void mmal_component_supplier_destructor(void)
{
   MMAL_COMPONENT_SUPPLIER_T *supplier = suppliers;


   while (supplier)
   {
      MMAL_COMPONENT_SUPPLIER_T *current = supplier;
      supplier = supplier->next;
      vcos_free(current);
   }
}
