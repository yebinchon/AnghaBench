
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct iohidmanager_hid_adapter {size_t slot; int data; } ;
struct TYPE_2__ {int * slots; } ;
typedef TYPE_1__ iohidmanager_hid_t ;
typedef int IOReturn ;
typedef int IOHIDReportType ;
typedef scalar_t__ CFIndex ;


 scalar_t__ hid_driver_get_data () ;
 int pad_connection_packet (int *,size_t,int ,int ) ;

__attribute__((used)) static void iohidmanager_hid_device_report(void *data,
      IOReturn result, void *sender,
      IOHIDReportType type, uint32_t reportID, uint8_t *report,
      CFIndex reportLength)
{
   struct iohidmanager_hid_adapter *adapter =
      (struct iohidmanager_hid_adapter*)data;
   iohidmanager_hid_t *hid = (iohidmanager_hid_t*)hid_driver_get_data();

   if (hid && adapter)
      pad_connection_packet(&hid->slots[adapter->slot], adapter->slot,
            adapter->data, (uint32_t)(reportLength + 1));
}
