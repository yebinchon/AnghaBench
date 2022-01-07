
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct record_params {int dummy; } ;
struct TYPE_4__ {void* (* init ) (struct record_params const*) ;} ;
typedef TYPE_1__ record_driver_t ;


 TYPE_1__** record_drivers ;
 void* stub1 (struct record_params const*) ;

__attribute__((used)) static bool record_driver_init_first(
      const record_driver_t **backend, void **data,
      const struct record_params *params)
{
   unsigned i;

   for (i = 0; record_drivers[i]; i++)
   {
      void *handle = record_drivers[i]->init(params);

      if (!handle)
         continue;

      *backend = record_drivers[i];
      *data = handle;
      return 1;
   }

   return 0;
}
