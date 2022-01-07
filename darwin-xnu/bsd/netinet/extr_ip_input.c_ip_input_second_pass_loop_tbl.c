
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ip_fw_in_args {int dummy; } ;
struct TYPE_6__ {int pkte_npkts; int pkte_nbytes; int * pkte_tail; struct mbuf* pkte_head; } ;
typedef TYPE_2__ pktchain_elm_t ;
struct TYPE_7__ {int ips_rxc_chainsz_gt4; int ips_rxc_chainsz_gt2; } ;


 int PKTTBL_SZ ;
 scalar_t__ ip_input_measure ;
 int ip_input_second_pass (struct mbuf*,int ,int ,int,int ,struct ip_fw_in_args*,int ) ;
 TYPE_3__ ipstat ;
 int net_perf ;
 int net_perf_histogram (int *,int) ;

__attribute__((used)) static void
ip_input_second_pass_loop_tbl(pktchain_elm_t *tbl, struct ip_fw_in_args *args)
{
 int i = 0;

 for (i = 0; i < PKTTBL_SZ; i++) {
  if (tbl[i].pkte_head != ((void*)0)) {
   struct mbuf *m = tbl[i].pkte_head;
   ip_input_second_pass(m, m->m_pkthdr.rcvif, 0,
       tbl[i].pkte_npkts, tbl[i].pkte_nbytes, args, 0);

   if (tbl[i].pkte_npkts > 2)
    ipstat.ips_rxc_chainsz_gt2++;
   if (tbl[i].pkte_npkts > 4)
    ipstat.ips_rxc_chainsz_gt4++;




   tbl[i].pkte_head = tbl[i].pkte_tail = ((void*)0);
   tbl[i].pkte_npkts = 0;
   tbl[i].pkte_nbytes = 0;

  }
 }
}
