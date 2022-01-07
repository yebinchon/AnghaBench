
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pbuf {scalar_t__ payload; } ;
struct bte_pcb {scalar_t__ state; int data_pcb; } ;
typedef int s32 ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_CLSD ;
 int ERR_MEM ;
 int ERR_VAL ;
 int HIDP_DATA_RTYPE_OUPUT ;
 int HIDP_TRANS_DATA ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 scalar_t__ STATE_DISCONNECTED ;
 scalar_t__ STATE_DISCONNECTING ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 int l2ca_datawrite (int ,struct pbuf*) ;
 int memcpy (scalar_t__,void*,int ) ;

s32 bte_senddata(struct bte_pcb *pcb,void *message,u16 len)
{
 err_t err;
 struct pbuf *p;

 if(pcb==((void*)0) || message==((void*)0) || len==0) return ERR_VAL;
 if(pcb->state==STATE_DISCONNECTING || pcb->state==STATE_DISCONNECTED) return ERR_CLSD;

 if((p=btpbuf_alloc(PBUF_RAW,(1 + len),PBUF_RAM))==((void*)0)) {
  ERROR("bte_senddata: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 ((u8*)p->payload)[0] = (HIDP_TRANS_DATA|HIDP_DATA_RTYPE_OUPUT);
 memcpy(p->payload+1,message,len);

 err = l2ca_datawrite(pcb->data_pcb,p);
 btpbuf_free(p);

 return err;
}
