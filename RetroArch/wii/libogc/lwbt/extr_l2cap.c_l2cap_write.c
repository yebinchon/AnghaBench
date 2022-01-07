
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct pbuf {scalar_t__ len; struct pbuf* next; } ;
struct bd_addr {int dummy; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 int L2CAP_ACL_CONT ;
 int L2CAP_ACL_START ;
 int LOG (char*) ;
 int btpbuf_header (struct pbuf*,scalar_t__) ;
 scalar_t__ lp_acl_write (struct bd_addr*,struct pbuf*,scalar_t__,int ) ;
 scalar_t__ lp_pdu_maxsize () ;

err_t l2cap_write(struct bd_addr *bdaddr, struct pbuf *p, u16_t len)
{
 u8_t pb = L2CAP_ACL_START;
 u16_t maxsize;
 u16_t outsize;
 err_t ret = ERR_OK;
 struct pbuf *q;
 u16_t i = 0;
 maxsize = lp_pdu_maxsize();
 q = p;

 while(len && ret == ERR_OK) {

  if(len > maxsize) {
   ret = lp_acl_write(bdaddr, q, maxsize, pb);
   len -= maxsize;
   outsize = maxsize;

   while(q->len < outsize) {
    outsize -= q->len;
    q = q->next;
   }

   if(outsize) {
    btpbuf_header(q, -outsize);
    i += outsize;
   }
   pb = L2CAP_ACL_CONT;
   LOG("l2cap_write: FRAG\n");
  } else {
   ret = lp_acl_write(bdaddr, q, len, pb);
   len = 0;
  }
 }
 btpbuf_header(q, i);
 LOG("l2cap_write: DONE\n");
 return ret;
}
