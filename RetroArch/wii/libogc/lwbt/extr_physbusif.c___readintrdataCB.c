
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct usbtxbuf {int * rpData; } ;
struct pbuf {scalar_t__ len; int payload; struct pbuf* next; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int openstate; } ;


 int ERROR (char*) ;
 int PBUF_POOL ;
 int PBUF_RAW ;
 size_t STACKSIZE ;
 int SYS_SwitchFiber (scalar_t__,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ __issue_intrread () ;
 int * __ppc_btstack1 ;
 TYPE_1__ __usbdev ;
 int btmemb_free (int *,struct usbtxbuf*) ;
 struct pbuf* btpbuf_alloc (int ,scalar_t__,int ) ;
 int btpbuf_free (struct pbuf*) ;
 int ctrlbufs ;
 scalar_t__ hci_event_handler ;
 int memcpy (int ,int *,scalar_t__) ;

__attribute__((used)) static s32 __readintrdataCB(s32 result,void *usrdata)
{
 u8 *ptr;
 u32 len;
 struct pbuf *p,*q;
 struct usbtxbuf *buf = (struct usbtxbuf*)usrdata;

 if(__usbdev.openstate!=0x0002) return 0;

 if(result>0) {
  len = result;
  p = btpbuf_alloc(PBUF_RAW,len,PBUF_POOL);
  if(p!=((void*)0)) {
   ptr = buf->rpData;
   for(q=p;q!=((void*)0) && len>0;q=q->next) {
    memcpy(q->payload,ptr,q->len);
    ptr += q->len;
    len -= q->len;
   }

   SYS_SwitchFiber((u32)p,0,0,0,(u32)hci_event_handler,(u32)(&__ppc_btstack1[STACKSIZE]));
   btpbuf_free(p);
  } else
   ERROR("__readintrdataCB: Could not allocate memory for pbuf.\n");
 }
 btmemb_free(&ctrlbufs,buf);

 return __issue_intrread();
}
