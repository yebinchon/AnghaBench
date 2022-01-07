
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct hci_pcb {int dummy; } ;
struct bt_state {int hci_inited; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_CONN ;
 scalar_t__ ERR_OK ;

 int HCI_SUCCESS ;
 int HCI_WRITE_COD ;
 int HCI_WRITE_INQUIRY_MODE ;
 int HCI_WRITE_INQUIRY_SCAN_TYPE ;
 int HCI_WRITE_PAGE_SCAN_TYPE ;
 int HCI_WRITE_PAGE_TIMEOUT ;
 int LOG (char*,int,int) ;
 scalar_t__ __bte_cmdfinish (struct bt_state*,scalar_t__) ;
 int hci_cmd_complete (int *) ;
 int hci_write_cod (int*) ;
 int hci_write_inquiry_scan_type (int) ;
 int hci_write_page_scan_type (int) ;
 int hci_write_page_timeout (int) ;

err_t bte_hci_initcore_complete2(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
 err_t err = ERR_OK;
 u8_t dev_cod[] = {0x04, 0x02,0x40};
 struct bt_state *state = (struct bt_state*)arg;

 LOG("bte_hci_initcore_complete2(%02x,%02x)\n",ogf,ocf);
 switch(ogf) {
  case 128:
   if(ocf==HCI_WRITE_INQUIRY_MODE) {
    if(result==HCI_SUCCESS) {
     hci_write_page_scan_type(0x01);
    } else
     err = ERR_CONN;
   } else if(ocf==HCI_WRITE_PAGE_SCAN_TYPE) {
    if(result==HCI_SUCCESS) {
     hci_write_inquiry_scan_type(0x01);
    } else
     err = ERR_CONN;
   } else if(ocf==HCI_WRITE_INQUIRY_SCAN_TYPE) {
    if(result==HCI_SUCCESS) {
     hci_write_cod(dev_cod);
    } else
     err = ERR_CONN;
   } else if(ocf==HCI_WRITE_COD) {
    if(result==HCI_SUCCESS) {
     hci_write_page_timeout(0x2000);
    } else
     err = ERR_CONN;
   } else if(ocf==HCI_WRITE_PAGE_TIMEOUT) {
    if(result==HCI_SUCCESS) {
     state->hci_inited = 1;
     hci_cmd_complete(((void*)0));
     return __bte_cmdfinish(state,ERR_OK);
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
