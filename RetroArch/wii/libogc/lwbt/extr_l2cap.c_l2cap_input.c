
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16_t ;
struct pbuf {scalar_t__ tot_len; struct hci_acl_hdr* payload; } ;
struct l2cap_seg {scalar_t__ len; struct pbuf* p; TYPE_1__* pcb; struct hci_acl_hdr* l2caphdr; int bdaddr; struct l2cap_seg* next; } ;
struct hci_acl_hdr {int len; int connhdl_pb_bc; int cid; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;
struct TYPE_3__ {int scid; struct TYPE_3__* next; } ;


 int ERR_OK ;
 scalar_t__ HCI_ACL_HDR_LEN ;
 int L2CAP_ACL_CONT ;
 int L2CAP_ACL_START ;
 int L2CAP_CMD_REJ ;
 int L2CAP_CMD_REJ_SIZE ;

 scalar_t__ L2CAP_HDR_LEN ;
 int const L2CAP_INVALID_CID ;

 int L2CAP_SEG_REG (struct l2cap_seg**,struct l2cap_seg*) ;
 int L2CAP_SEG_RMV (struct l2cap_seg**,struct l2cap_seg*) ;

 int L2CA_ACTION_RECV (TYPE_1__*,struct pbuf*,int ,int ) ;
 int LOG (char*) ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 scalar_t__ bd_addr_cmp (struct bd_addr*,int *) ;
 int bd_addr_set (int *,struct bd_addr*) ;
 struct l2cap_seg* btmemb_alloc (int *) ;
 int btmemb_free (int *,struct l2cap_seg*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_chain (struct pbuf*,struct pbuf*) ;
 int btpbuf_free (struct pbuf*) ;
 int btpbuf_header (struct pbuf*,scalar_t__) ;
 int btpbuf_realloc (struct pbuf*,int) ;
 int htole16 (int const) ;
 TYPE_1__* l2cap_active_pcbs ;
 struct l2cap_seg* l2cap_insegs ;
 int l2cap_next_sigid () ;
 int l2cap_process_sig (struct pbuf*,struct hci_acl_hdr*,struct bd_addr*) ;
 int l2cap_segs ;
 int l2cap_signal (int *,int ,int ,struct bd_addr*,struct pbuf*) ;
 void* le16toh (int) ;

void l2cap_input(struct pbuf *p, struct bd_addr *bdaddr)
{
 struct l2cap_seg *inseg;
 struct hci_acl_hdr *aclhdr;
 struct pbuf *data;
 err_t ret;

 (void)ret;

 btpbuf_header(p, HCI_ACL_HDR_LEN);
 aclhdr = p->payload;
 btpbuf_header(p, -HCI_ACL_HDR_LEN);

 btpbuf_realloc(p, aclhdr->len);

 for(inseg = l2cap_insegs; inseg != ((void*)0); inseg = inseg->next) {
  if(bd_addr_cmp(bdaddr, &(inseg->bdaddr))) {
   break;
  }
 }

 aclhdr->connhdl_pb_bc = le16toh(aclhdr->connhdl_pb_bc);
 aclhdr->len = le16toh(aclhdr->len);


 if(((aclhdr->connhdl_pb_bc >> 12) & 0x03)== L2CAP_ACL_CONT) {
  if(inseg == ((void*)0)) {

   LOG("l2cap_input: Continuing fragment. Discard packet\n");
   btpbuf_free(p);
   return;
  } else if(inseg->p->tot_len + p->tot_len > inseg->len) {



   LOG("l2cap_input: Continuing fragment. Length exceeds L2CAP hdr length. Discard packet\n");
   btpbuf_free(inseg->p);
   L2CAP_SEG_RMV(&(l2cap_insegs), inseg);
   btmemb_free(&l2cap_segs, inseg);

   btpbuf_free(p);
   return;
  }

  btpbuf_chain(inseg->p, p);
  btpbuf_free(p);

 } else if(((aclhdr->connhdl_pb_bc >> 12) & 0x03) == L2CAP_ACL_START) {

  if(inseg != ((void*)0)) {

   LOG("l2cap_input: Start of L2CAP packet. Discard previous packet\n");
   btpbuf_free(inseg->p);
  } else {
   inseg = btmemb_alloc(&l2cap_segs);
   bd_addr_set(&(inseg->bdaddr), bdaddr);
   L2CAP_SEG_REG(&(l2cap_insegs), inseg);
  }
  inseg->p = p;
  inseg->l2caphdr = p->payload;
  inseg->l2caphdr->cid = le16toh(inseg->l2caphdr->cid);
  inseg->l2caphdr->len = le16toh(inseg->l2caphdr->len);

  inseg->len = inseg->l2caphdr->len + L2CAP_HDR_LEN;
  for(inseg->pcb = l2cap_active_pcbs; inseg->pcb != ((void*)0); inseg->pcb = inseg->pcb->next) {
   if(inseg->pcb->scid == inseg->l2caphdr->cid) {
    break;
   }
  }
 } else {

  LOG("l2cap_input: Discard packet\n");
  btpbuf_free(inseg->p);
  L2CAP_SEG_RMV(&(l2cap_insegs), inseg);
  btmemb_free(&l2cap_segs, inseg);

  btpbuf_free(p);
  return;
 }
 if(inseg->p->tot_len < inseg->len) {
  LOG("l2cap_input: Get continuing segments\n");
  return;
 }


 switch(inseg->l2caphdr->cid) {
  case 129:

   LOG("l2cap_input: Illegal null cid\n");
   btpbuf_free(inseg->p);
   break;
  case 128:
   btpbuf_header(inseg->p, -L2CAP_HDR_LEN);
   l2cap_process_sig(inseg->p, inseg->l2caphdr, bdaddr);
   btpbuf_free(inseg->p);
   break;
  case 130:

   btpbuf_free(inseg->p);
   break;
  default:
   if(inseg->l2caphdr->cid < 0x0040 || inseg->pcb == ((void*)0)) {


    if((data = btpbuf_alloc(PBUF_RAW, L2CAP_CMD_REJ_SIZE+4, PBUF_RAM)) != ((void*)0)) {
     ((u16_t *)data->payload)[0] = htole16(L2CAP_INVALID_CID);
     ((u16_t *)data->payload)[1] = htole16(inseg->l2caphdr->cid);
     ((u16_t *)data->payload)[2] = htole16(129);

     ret = l2cap_signal(((void*)0), L2CAP_CMD_REJ, l2cap_next_sigid(), bdaddr, data);
    }
    btpbuf_free(inseg->p);
    break;
   }

   btpbuf_header(inseg->p, -L2CAP_HDR_LEN);


   LOG("l2cap_input: Forward packet to higher layer\n");
   L2CA_ACTION_RECV(inseg->pcb,inseg->p,ERR_OK,ret);
   break;
 }


 L2CAP_SEG_RMV(&(l2cap_insegs), inseg);
 btmemb_free(&l2cap_segs, inseg);
}
