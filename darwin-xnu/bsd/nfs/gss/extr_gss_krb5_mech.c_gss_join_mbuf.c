
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbuf_t ;


 scalar_t__ mbuf_next (scalar_t__) ;
 int mbuf_setnext (scalar_t__,scalar_t__) ;

mbuf_t
gss_join_mbuf(mbuf_t head, mbuf_t body, mbuf_t tail)
{
 mbuf_t mb;

 for (mb = head; mb && mbuf_next(mb); mb = mbuf_next(mb))
  ;
 if (mb)
  mbuf_setnext(mb, body);
 for (mb = body; mb && mbuf_next(mb); mb = mbuf_next(mb))
  ;
 if (mb)
  mbuf_setnext(mb, tail);
 mb = head ? head : (body ? body : tail);
 return (mb);
}
