
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_28__ {int xport; int addr; } ;
struct TYPE_26__ {int xport; int addr; } ;
struct TYPE_24__ {int xport; int addr; } ;
struct TYPE_22__ {int xport; int addr; } ;
struct pfsync_state {unsigned int nat_rule; unsigned int anchor; scalar_t__ expire; int sync_flags; int timeout; int allow_opts; int log; scalar_t__ creation; int * packets; int * bytes; int rule; int dst; int src; int ifname; int creatorid; int id; int flowhash; int direction; int af_gwy; int af_lan; int proto; int tag; int proto_variant; TYPE_7__ ext_gwy; TYPE_5__ ext_lan; TYPE_3__ gwy; TYPE_1__ lan; } ;
struct TYPE_29__ {int xport; int addr; } ;
struct TYPE_27__ {int xport; int addr; } ;
struct TYPE_25__ {int xport; int addr; } ;
struct TYPE_23__ {int xport; int addr; } ;
struct pf_state_key {int flowhash; int direction; int af_gwy; int af_lan; int proto; int proto_variant; TYPE_8__ ext_gwy; TYPE_6__ ext_lan; TYPE_4__ gwy; TYPE_2__ lan; } ;
struct TYPE_21__ {TYPE_14__* ptr; } ;
struct TYPE_19__ {TYPE_12__* ptr; } ;
struct TYPE_17__ {TYPE_10__* ptr; } ;
struct pf_state {scalar_t__ creation; scalar_t__ nat_src_node; scalar_t__ src_node; int timeout; int allow_opts; int log; int * packets; int * bytes; TYPE_15__ anchor; TYPE_13__ nat_rule; TYPE_11__ rule; int dst; int src; TYPE_9__* kif; int creatorid; int id; int tag; } ;
struct TYPE_30__ {int pfik_name; } ;
struct TYPE_20__ {unsigned int nr; } ;
struct TYPE_18__ {unsigned int nr; } ;
struct TYPE_16__ {int nr; } ;


 int PFSYNC_FLAG_NATSRCNODE ;
 int PFSYNC_FLAG_SRCNODE ;
 int bzero (struct pfsync_state*,int) ;
 int memcpy (int *,int *,int) ;
 int pf_state_counter_to_pfsync (int ,int ) ;
 scalar_t__ pf_state_expires (struct pf_state*) ;
 int pf_state_peer_to_pfsync (int *,int *) ;
 scalar_t__ pf_time_second () ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
pf_state_export(struct pfsync_state *sp, struct pf_state_key *sk,
    struct pf_state *s)
{
 uint64_t secs = pf_time_second();
 bzero(sp, sizeof (struct pfsync_state));


 sp->lan.addr = sk->lan.addr;
 sp->lan.xport = sk->lan.xport;
 sp->gwy.addr = sk->gwy.addr;
 sp->gwy.xport = sk->gwy.xport;
 sp->ext_lan.addr = sk->ext_lan.addr;
 sp->ext_lan.xport = sk->ext_lan.xport;
 sp->ext_gwy.addr = sk->ext_gwy.addr;
 sp->ext_gwy.xport = sk->ext_gwy.xport;
 sp->proto_variant = sk->proto_variant;
 sp->tag = s->tag;
 sp->proto = sk->proto;
 sp->af_lan = sk->af_lan;
 sp->af_gwy = sk->af_gwy;
 sp->direction = sk->direction;
 sp->flowhash = sk->flowhash;


 memcpy(&sp->id, &s->id, sizeof (sp->id));
 sp->creatorid = s->creatorid;
 strlcpy(sp->ifname, s->kif->pfik_name, sizeof (sp->ifname));
 pf_state_peer_to_pfsync(&s->src, &sp->src);
 pf_state_peer_to_pfsync(&s->dst, &sp->dst);

 sp->rule = s->rule.ptr->nr;
 sp->nat_rule = (s->nat_rule.ptr == ((void*)0)) ?
     (unsigned)-1 : s->nat_rule.ptr->nr;
 sp->anchor = (s->anchor.ptr == ((void*)0)) ?
     (unsigned)-1 : s->anchor.ptr->nr;

 pf_state_counter_to_pfsync(s->bytes[0], sp->bytes[0]);
 pf_state_counter_to_pfsync(s->bytes[1], sp->bytes[1]);
 pf_state_counter_to_pfsync(s->packets[0], sp->packets[0]);
 pf_state_counter_to_pfsync(s->packets[1], sp->packets[1]);
 sp->creation = secs - s->creation;
 sp->expire = pf_state_expires(s);
 sp->log = s->log;
 sp->allow_opts = s->allow_opts;
 sp->timeout = s->timeout;

 if (s->src_node)
  sp->sync_flags |= PFSYNC_FLAG_SRCNODE;
 if (s->nat_src_node)
  sp->sync_flags |= PFSYNC_FLAG_NATSRCNODE;

 if (sp->expire > secs)
  sp->expire -= secs;
 else
  sp->expire = 0;

}
