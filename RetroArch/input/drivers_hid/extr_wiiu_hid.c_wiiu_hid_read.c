
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t rx_size; int handle; } ;
typedef TYPE_1__ wiiu_adapter_t ;
typedef int int32_t ;


 int HIDRead (int ,void*,size_t,int *,int *) ;
 int report_hid_error (char*,TYPE_1__*,int) ;

__attribute__((used)) static int32_t wiiu_hid_read(void *data, void *buffer, size_t size)
{
   wiiu_adapter_t *adapter = (wiiu_adapter_t *)data;
   int32_t result;

   if (!adapter)
      return -1;

   if (size > adapter->rx_size)
      return -1;

   result = HIDRead(adapter->handle, buffer, size, ((void*)0), ((void*)0));
   if (result < 0)
      report_hid_error("read failed", adapter, result);

   return result;
}
