
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiiusb_adapter {int send_control_type; int send_control_buffer; int send_control_size; int handle; int endpoint_out; } ;
typedef int int32_t ;


 int USB_REPTYPE_FEATURE ;
 int USB_REPTYPE_OUTPUT ;
 int USB_REQTYPE_INTERFACE_SET ;
 int USB_REQ_SETREPORT ;
 int USB_WriteCtrlMsg (int ,int ,int ,int,int,int ,int ) ;
 int USB_WriteIntrMsg (int ,int ,int ,int ) ;



 int WIIUSB_SC_NONE ;

__attribute__((used)) static void wiiusb_hid_process_control_message(struct wiiusb_adapter* adapter)
{
   int32_t r;
   switch (adapter->send_control_type)
   {
      case 128:
         do
         {
            r = USB_WriteIntrMsg(adapter->handle,
               adapter->endpoint_out, adapter->send_control_size,
               adapter->send_control_buffer);
         } while (r < 0);
         break;
      case 130:
         do
         {
            r = USB_WriteCtrlMsg(adapter->handle, USB_REQTYPE_INTERFACE_SET,
               USB_REQ_SETREPORT, (USB_REPTYPE_FEATURE<<8) | 0xf4, 0x0,
               adapter->send_control_size, adapter->send_control_buffer);
         } while (r < 0);
         break;
      case 129:
         do
         {
            r = USB_WriteCtrlMsg(adapter->handle, USB_REQTYPE_INTERFACE_SET,
                  USB_REQ_SETREPORT, (USB_REPTYPE_OUTPUT<<8) | 0x01, 0x0,
                  adapter->send_control_size, adapter->send_control_buffer);
         } while (r < 0);
         break;

   }

   adapter->send_control_type = WIIUSB_SC_NONE;
}
