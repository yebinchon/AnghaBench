
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* driver; int * driver_handle; } ;
typedef TYPE_2__ wiiu_adapter_t ;
typedef int uint8_t ;
struct TYPE_5__ {int name; int * (* init ) (TYPE_2__*) ;} ;


 int ADAPTER_STATE_DONE ;
 int ADAPTER_STATE_READY ;
 int RARCH_ERR (char*,int ) ;
 int * stub1 (TYPE_2__*) ;

__attribute__((used)) static uint8_t try_init_driver(wiiu_adapter_t *adapter)
{
   adapter->driver_handle = adapter->driver->init(adapter);
   if (adapter->driver_handle == ((void*)0))
   {
     RARCH_ERR("[hid]: Failed to initialize driver: %s\n",
        adapter->driver->name);
     return ADAPTER_STATE_DONE;
   }

   return ADAPTER_STATE_READY;
}
