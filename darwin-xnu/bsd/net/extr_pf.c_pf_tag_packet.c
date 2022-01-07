
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pf_pdesc {int pktflags; int proto; int flowhash; int flowsrc; } ;
struct pf_mtag {int pftag_tag; unsigned int pftag_rtableid; } ;
struct TYPE_4__ {int* pb_flags; int * pb_proto; int * pb_flowid; int * pb_flowsrc; } ;
typedef TYPE_1__ pbuf_t ;


 scalar_t__ PF_RTABLEID_IS_VALID (unsigned int) ;
 int PKTF_FLOW_ID ;
 struct pf_mtag* pf_get_mtag_pbuf (TYPE_1__*) ;

int
pf_tag_packet(pbuf_t *pbuf, struct pf_mtag *pf_mtag, int tag,
    unsigned int rtableid, struct pf_pdesc *pd)
{
 if (tag <= 0 && !PF_RTABLEID_IS_VALID(rtableid) &&
     (pd == ((void*)0) || !(pd->pktflags & PKTF_FLOW_ID)))
  return (0);

 if (pf_mtag == ((void*)0) && (pf_mtag = pf_get_mtag_pbuf(pbuf)) == ((void*)0))
  return (1);

 if (tag > 0)
  pf_mtag->pftag_tag = tag;
 if (PF_RTABLEID_IS_VALID(rtableid))
  pf_mtag->pftag_rtableid = rtableid;
 if (pd != ((void*)0) && (pd->pktflags & PKTF_FLOW_ID)) {
  *pbuf->pb_flowsrc = pd->flowsrc;
  *pbuf->pb_flowid = pd->flowhash;
  *pbuf->pb_flags |= pd->pktflags;
  *pbuf->pb_proto = pd->proto;
 }

 return (0);
}
