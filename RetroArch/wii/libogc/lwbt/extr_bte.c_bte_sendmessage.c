
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pbuf {scalar_t__ payload; } ;
struct ctrl_req_t {int * sent; struct bte_pcb* pcb; struct pbuf* p; } ;
struct bte_pcb {scalar_t__ state; } ;
typedef scalar_t__ s32 ;


 int ERROR (char*) ;
 scalar_t__ ERR_CLSD ;
 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 scalar_t__ ERR_VAL ;
 int HIDP_DATA_RTYPE_OUPUT ;
 int HIDP_TRANS_SETREPORT ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 scalar_t__ STATE_DISCONNECTED ;
 scalar_t__ STATE_DISCONNECTING ;
 scalar_t__ __bte_send_request (struct ctrl_req_t*) ;
 scalar_t__ __bte_waitrequest (struct ctrl_req_t*) ;
 int bte_ctrl_reqs ;
 struct ctrl_req_t* btmemb_alloc (int *) ;
 int btmemb_free (int *,struct ctrl_req_t*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int memcpy (scalar_t__,void*,int ) ;

s32 bte_sendmessage(struct bte_pcb *pcb,void *message,u16 len)
{
 s32 err = ERR_VAL;
 struct pbuf *p;
 struct ctrl_req_t *req;



 if(pcb==((void*)0) || message==((void*)0) || len==0) return ERR_VAL;
 if(pcb->state==STATE_DISCONNECTING || pcb->state==STATE_DISCONNECTED) return ERR_CLSD;

 if((req=btmemb_alloc(&bte_ctrl_reqs))==((void*)0)) {
  ERROR("bte_sendmessage: Could not allocate memory for request\n");
  return ERR_MEM;
 }

 if((p=btpbuf_alloc(PBUF_RAW,(1 + len),PBUF_RAM))==((void*)0)) {
  ERROR("bte_sendmessage: Could not allocate memory for pbuf\n");
  btmemb_free(&bte_ctrl_reqs,req);
  return ERR_MEM;
 }

 ((u8*)p->payload)[0] = (HIDP_TRANS_SETREPORT|HIDP_DATA_RTYPE_OUPUT);
 memcpy(p->payload+1,message,len);

 req->p = p;
 req->pcb = pcb;
 req->sent = ((void*)0);
 err = __bte_send_request(req);
 if(err==ERR_OK) err = __bte_waitrequest(req);

 btmemb_free(&bte_ctrl_reqs,req);
 return err;
}
