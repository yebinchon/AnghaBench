
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int cmd_len; TYPE_1__* cmd; int set; int rulenum; scalar_t__ act_ofs; } ;
struct TYPE_10__ {scalar_t__ offset; scalar_t__ elements; scalar_t__ size; } ;
struct TYPE_9__ {scalar_t__ offset; scalar_t__ elements; scalar_t__ size; } ;
struct TYPE_8__ {scalar_t__ offset; scalar_t__ elements; scalar_t__ size; } ;
struct TYPE_7__ {int len; int opcode; } ;


 int IPFW_DEFAULT_RULE ;
 int O_ACCEPT ;
 int O_DENY ;
 int RESVD_SET ;
 int bzero (TYPE_5__*,int) ;
 TYPE_5__ default_rule ;
 int dn_mutex ;
 int dn_mutex_attr ;
 int dn_mutex_grp ;
 int dn_mutex_grp_attr ;
 int dummynet_io ;
 TYPE_4__ extract_heap ;
 int ip_dn_ctl ;
 int ip_dn_ctl_ptr ;
 int ip_dn_io_ptr ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int ,int ,int ) ;
 TYPE_3__ ready_heap ;
 TYPE_2__ wfq_ready_heap ;

void
ip_dn_init(void)
{

 dn_mutex_grp_attr = lck_grp_attr_alloc_init();
 dn_mutex_grp = lck_grp_alloc_init("dn", dn_mutex_grp_attr);
 dn_mutex_attr = lck_attr_alloc_init();
 lck_mtx_init(dn_mutex, dn_mutex_grp, dn_mutex_attr);

 ready_heap.size = ready_heap.elements = 0 ;
 ready_heap.offset = 0 ;

 wfq_ready_heap.size = wfq_ready_heap.elements = 0 ;
 wfq_ready_heap.offset = 0 ;

 extract_heap.size = extract_heap.elements = 0 ;
 extract_heap.offset = 0 ;
 ip_dn_ctl_ptr = ip_dn_ctl;
 ip_dn_io_ptr = dummynet_io;

 bzero(&default_rule, sizeof default_rule);
}
