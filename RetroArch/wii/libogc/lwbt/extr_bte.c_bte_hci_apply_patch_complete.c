
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct hci_pcb {int dummy; } ;
struct bt_state {int dummy; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_CONN ;
 scalar_t__ ERR_OK ;
 int HCI_SUCCESS ;

 int HCI_VENDOR_PATCH_CONT_OCF ;
 int HCI_VENDOR_PATCH_END_OCF ;
 int HCI_VENDOR_PATCH_START_OCF ;
 int LOG (char*,int,int,...) ;
 int __bte_cmdfinish (struct bt_state*,scalar_t__) ;
 int bte_hci_patch_complete ;
 int bte_patch0 ;
 int bte_patch1 ;
 int hci_cmd_complete (int ) ;
 scalar_t__ hci_vendor_specific_command (int,int const,int ,int) ;

err_t bte_hci_apply_patch_complete(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
 err_t err = ERR_OK;
 struct bt_state *state = (struct bt_state*)arg;

 LOG("bte_hci_apply_patch_complete(%02x,%02x,%02x)\n",ogf,ocf,result);
 switch(ogf) {
  case 128:
   if(ocf==HCI_VENDOR_PATCH_START_OCF) {
    if(result==HCI_SUCCESS) {
     err = hci_vendor_specific_command(HCI_VENDOR_PATCH_CONT_OCF,128,bte_patch0,184);
    } else
     err = ERR_CONN;
   } else if(ocf==HCI_VENDOR_PATCH_CONT_OCF) {
    if(result==HCI_SUCCESS) {
     hci_cmd_complete(bte_hci_patch_complete);
     err = hci_vendor_specific_command(HCI_VENDOR_PATCH_END_OCF,128,bte_patch1,92);
    } else
     err = ERR_CONN;
   }
   break;
  default:
   LOG("Unknown command complete event. OGF = 0x%x OCF = 0x%x\n", ogf, ocf);
   err = ERR_CONN;
   break;
 }

 if(err!=ERR_OK) __bte_cmdfinish(state,err);
 return err;
}
